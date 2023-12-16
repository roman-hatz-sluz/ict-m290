const mysql = require("mysql");
const parseDbUrl = require("parse-database-url");
const dbConfig = require("./groups.json");
if (process.env.APP_ENV !== "prod") {
  require("dotenv").config();
}

//const setAutoIncrement = "SET @@auto_increment_increment=1;";

const QUERIES = {
  Hauptkategorien: "SELECT * FROM Hauptkategorien; SELECT * FROM Kategorien;",
};

const execQuery = (group, sql = "", pw = "", queryTpe = "") => {
  const parameters = [];
  //console.log("execQuery", "group", group, "sql", sql, "pw", pw, "queryTpe", queryTpe)
  return new Promise((resolve, reject) => {
    const config = dbConfig[group];
    if (!config) {
      reject("db config missing for " + group);
    }

    const parsedConfig = parseDbUrl(process.env[dbConfig[group].ENV]);
    parsedConfig.multipleStatements = true;
    // logik: wenn query type, dann kein passwort
    if (queryTpe && QUERIES[queryTpe]) {
      sql = QUERIES[queryTpe];
    } else {
      const isValid =
        pw === parsedConfig.password || pw === process.env.MASTER_PW;
      if (!isValid) {
        reject("invalid password");
      }
    }

    const connection = mysql.createConnection(parsedConfig);
    connection.connect();
    connection.on("error", (err) => {
      console.error("db error", err);
      console.error("db error code", err.code);
      try {
        connection.end();
      } catch (e) {
        reject(e);
      }
      connection.connect();
    });

    connection.query(sql, [parameters], (err, result) => {
      if (err) {
        try {
          connection.end();
        } catch (e) {
          reject(e);
        }

        reject(err);
      }
      connection.end();
      resolve(result);
    });
  });
};

const getGroupData = (pw = "") => {
  let result = null;
  const groups = Object.keys(dbConfig);
  // console.log("pw", pw, groups)
  groups.forEach((g) => {
    //  console.log("dbConfig[g].ENV",dbConfig[g].ENV, process.env[dbConfig[g].ENV])
    const sqlQueryString = process.env[dbConfig[g].ENV] || "";
    const sqlConnectionString = parseDbUrl(sqlQueryString);

    if (sqlQueryString.includes(":" + pw + "@")) {
      result = {
        group: g,
        con: sqlQueryString,
        sqlConnectionString: sqlConnectionString,
        name: dbConfig[g].name,
        class: dbConfig[g].class,
        ENV: dbConfig[g].ENV,
      };
    }
  });

  return result;
};

module.exports = {
  execQuery,
  getGroupData,
};
