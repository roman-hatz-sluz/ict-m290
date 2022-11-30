const express = require("express");
const session = require("express-session");
const fs = require("fs");
const bodyParser = require("body-parser");
const cors = require("cors");

const DBClient = require("./srv/db-client");
const app = express();
app.use(
  session({
    secret: "xw   ef (sfefdsdf",
    saveUninitialized: true,
    resave: false,
  })
);
app.use(bodyParser.json());

const port = process.env.PORT || process.env.VCAP_APP_PORT || 3099;

app.enable("trust proxy");

app.use((req, res, next) => {
  if (req.secure === false && app.get("env") !== "development") {
    res.redirect("https://" + req.headers.host + req.url);
  } else {
    res.header("Access-Control-Allow-Credentials", true);
    res.header("Access-Control-Allow-Methods", "GET,PUT,POST,DELETE,OPTIONS");
    res.header(
      "Access-Control-Allow-Headers",
      "Origin,X-Requested-With,Content-Type,Accept,content-type,application/json"
    );

    next();
  }
});
app.use((req, res, next) => {
  if (req.path.substr(-1) == "/" && req.path.length > 1) {
    let query = req.url.slice(req.path.length);
    res.redirect(301, req.path.slice(0, -1) + query);
  } else {
    next();
  }
});

// allow local development with files only
app.use(cors());

// serve assets
app.use(express.static(__dirname + "/public"));

app.get("/", (request, response) => {
  let html = getPageHtml(request, "index");
  response.end(html);
});

app.get("/index.html", (request, response) => {
  let html = getPageHtml(request, "index");
  response.end(html);
});

app.get("/login", (request, response) => {
  const data = request.query;
  const pw = data.pw ? data.pw : "";
  //console.log("login pw", pw, data)
  const group = DBClient.getGroupData(pw);
  // console.log("login",group,pw)
  if (group && group.group) {
    request.session.pw = pw;

    response.redirect("/home");
  } else {
    response.redirect("/?invalidPw=1");
    request.session.pw = "";
  }
});
app.get("/logout", (request, response) => {
  request.session.pw = "";
  response.redirect("/");
});

app.get("/home", (request, response) => {
  checkLogin(request, response);
  const html = getPageHtml(request, "home");
  response.end(html);
});

app.get("/shopHome", (request, response) => {
  checkLogin(request, response);
  const html = getPageHtml(request, "shopHome");
  response.end(html);
});
app.get("/shopMaincat", (request, response) => {
  checkLogin(request, response);
  const html = getPageHtml(request, "shopMaincat");
  response.end(html);
});
app.get("/shopDetails", (request, response) => {
  checkLogin(request, response);
  const html = getPageHtml(request, "shopDetails");
  response.end(html);
});

app.post("/sql", (request, response) => {
  const data = request.body;
  //console.log("/sql data", request.body)

  if (data.group) {
    const pw = data.pw ? data.pw : "";
    const query = data.query ? data.query : "";
    const customSql = data.sql ? data.sql : "";

    DBClient.execQuery(data.group, customSql, pw, query)
      .then((res) => {
        response.setHeader("Content-Type", "application/json");
        response.end(JSON.stringify(res));
      })
      .catch((err) => {
        console.log("error", err);
        response.json({ error: err });
      });
  } else {
    response.json({ error: "invalid params" });
  }
});

const server = app.listen(port, () => {
  console.log(
    "Listening on port %d",
    server.address().port,
    "ENV:",
    app.get("env")
  );
});

const checkLogin = (request, response) => {
  const pw = request.session.pw;
  const group = DBClient.getGroupData(pw);
  if (!group || !group.sqlConnectionString) {
    response.redirect("/?invalidPw=1");
  }
};

const getPageHtml = (request, name = "") => {
  let html = "";
  const pw = request.session.pw;
  const group = DBClient.getGroupData(pw);
  html = fs.readFileSync(__dirname + "/public/src/" + name + ".html", "utf8");
  const head = fs.readFileSync(
    __dirname + "/public/src/incl_head.html",
    "utf8"
  );
  const header = fs.readFileSync(
    __dirname + "/public/src/incl_header.html",
    "utf8"
  );
  const footer = fs.readFileSync(
    __dirname + "/public/src/incl_footer.html",
    "utf8"
  );
  const nav = fs.readFileSync(
    __dirname + "/public/src/incl_content-nav.html",
    "utf8"
  );

  html = html.replace(/___HEAD___/g, head);
  html = html.replace(/___HEADER___/g, header);
  html = html.replace(/___FOOTER___/g, footer);
  html = html.replace(/___NAV___/g, nav);

  if (group && group.sqlConnectionString) {
    html = html.replace(/_GRUPPE_/g, group.group);
    html = html.replace(/_GROUPNAME_/g, `${group.group}-${group.class}`);
    html = html.replace(/_NAME_/g, group.name);
    html = html.replace(/_KLASSE_/g, group.class);

    // for adminer link
    html = html.replace(/_USER_/g, group.sqlConnectionString.user);
    html = html.replace(/_DATABASE_/g, group.sqlConnectionString.database);
    html = html.replace(/_SERVER_/g, group.sqlConnectionString.host);
    // adminer password field does not work prefilled
    html = html.replace(/_PASSWORD_/g, group.sqlConnectionString.password);

    html = html.replace(/_ENV_/g, group.ENV);
  } else {
    console.error("invalid group configuration for pw:", pw);
  }
  return html;
};
