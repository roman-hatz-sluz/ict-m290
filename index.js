const express = require("express");
const session = require("express-session");
const fs = require("fs");
const bodyParser = require("body-parser");
const cors = require("cors");

const DBClient = require("./srv/db-client");
const { getPackedSettings } = require("http2");
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
  const html = getPageHtml("index");
  response.end(html);
});

app.get("/index.html", (request, response) => {
  const html = getPageHtml("index");
  response.end(html);
});

app.use(express.static(__dirname + "/public"));

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
  const pw = request.session.pw;
  let html = "";
  const group = DBClient.getGroupData(pw);
  // console.log("group /home", group)

  if (group && group.group) {
    let html = getPageHtml("home");
    html = html.replace(/_GRUPPE_/g, group.group);
    html = html.replace(/_NAME_/g, group.name);
    html = html.replace(/_KLASSE_/g, group.class);
    html = html.replace(/_ENV_/g, group.ENV, group);
    response.end(html);
  } else {
    response.redirect("/?invalidPw=1");
  }
});
app.get("/import", (request, response) => {
  const html = getPageHtml("import");
  response.end(html);
});
app.get("/dbms", (request, response) => {
  const html = getPageHtml("dbms");
  response.end(html);
});
/*
app.get("/csv", (request, response) => {
 const html = getPageHtml("csv");
 response.end(html);
});
 
app.get("/maincat", (request, response) => {
 const html = getPageHtml("maincat");
 response.end(html);
});

app.get("/produkt", (request, response) => {
const html = getPageHtml("produkt");
 response.end(html);
});
*/

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

const getPageHtml = (name = "") => {
  let html = "";
  html = fs.readFileSync(__dirname + "/public/src/" + name + ".html", "utf8");
  const head = fs.readFileSync(__dirname + "/public/src/incl_head.html", "utf8");
  const header = fs.readFileSync(__dirname + "/public/src/incl_header.html", "utf8");
  const footer = fs.readFileSync(__dirname + "/public/src/incl_footer.html", "utf8");

  html = html.replace(/___HEAD___/g, head);
  html = html.replace(/___HEADER___/g, header);
  html = html.replace(/___FOOTER___/g, footer);
  return html;
}