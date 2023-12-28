const { expect } = require("chai");
const { describe, it, before } = require("mocha");
const addContext = require("mochawesome/addContext");
const fs = require("fs");
const mysql = require("mysql");
const parseDbUrl = require("parse-database-url");

const groupName = "b1";
//const args = process.argv.slice(2);
// process.argv[process.argv.indexOf("--") + 1];

let analytics;

const { GROUP_MAPPING } = require("./group-mapping.js");
const { SQL_QUERIES, ANALYTICS_QUERY, replaceKeys } = require("./queries.js");

const { parseAnalytics } = require("./analyze.js");
const jsonString = fs.readFileSync("./_secret/secret-env.json", "utf8");
const jsonData = JSON.parse(jsonString);

const sqlConnectionString = jsonData[groupName].sqlstring;
const mappedQueries = SQL_QUERIES.map((q) => {
  return replaceKeys(GROUP_MAPPING[groupName], q.sql);
});
before(async function () {
  analytics = await getAnalytics();
});

describe(`Gruppe ${groupName}`, () => {
  it(`Analytics`, function () {
    addContext(this, {
      title: "Analytics",
      value: analytics,
    });
  });
  it(`Mindestens 2 Tabellen`, async function () {
    addContext(this, {
      title: "distinctTables",
      value: analytics.stats.distinctTables,
    });
    expect(analytics.stats.numberOfTables).to.be.greaterThan(1);
  });
  it(`5 oder mehr Tabellen`, async function () {
    addContext(this, {
      title: "distinctTables",
      value: analytics.stats.distinctTables,
    });
    expect(analytics.stats.numberOfTables).to.be.greaterThan(4);
  });

  it(`Mindestens 4 verschiedene Data Types`, async function () {
    addContext(this, {
      title: "listOfDistinctColumnTypes",
      value: analytics.stats.listOfDistinctColumnTypes,
    });
    expect(analytics.stats.listOfDistinctColumnTypes.length).to.be.greaterThan(
      3,
    );
  });
  it(`Alle Tabellen mit Primärschlüssel`, async function () {
    addContext(this, {
      title: "analytics",
      value: analytics.stats,
    });
    expect(analytics.stats.numberOfTables).to.equal(
      analytics.stats.numberOfPrimaryKeys,
    );
  });
  it(`Mindestens 1 Fremdschlüssel`, async function () {
    addContext(this, {
      title: "numberOfForeignKeys",
      value: analytics.stats.numberOfForeignKeys,
    });
    expect(analytics.stats.numberOfForeignKeys).to.be.greaterThan(0);
  });
  it(`Mindestens 2 Fremdschlüssel`, async function () {
    addContext(this, {
      title: "numberOfForeignKeys",
      value: analytics.stats.numberOfForeignKeys,
    });
    expect(analytics.stats.numberOfForeignKeys).to.be.greaterThan(1);
  });
  it(`Mehr als 3 Fremdschlüssel`, async function () {
    addContext(this, {
      title: "numberOfForeignKeys",
      value: analytics.stats.numberOfForeignKeys,
    });
    expect(analytics.stats.numberOfForeignKeys).to.be.greaterThan(3);
  });

  SQL_QUERIES.forEach(function (query, i) {
    it(`${query.descr}`, async function () {
      const results = await execQuery(sqlConnectionString, mappedQueries[i]);
      addContext(this, {
        title: "Actual",
        value: results[0],
      });
      expect(query.validate(results)).to.be.true;
    });
  });
});

const execQuery = (sqlConnectionString, sql = "") => {
  const parameters = [];

  return new Promise((resolve, reject) => {
    const parsedConfig = parseDbUrl(sqlConnectionString);
    parsedConfig.multipleStatements = true;

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

async function getAnalytics() {
  const results = await execQuery(sqlConnectionString, ANALYTICS_QUERY);
  const analyzed = parseAnalytics(results[4]);

  return analyzed;
}
