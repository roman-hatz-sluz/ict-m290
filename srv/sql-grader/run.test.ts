const { expect } = require("chai");
const { describe, it, before, after } = require("mocha");
const addContext = require("mochawesome/addContext");
const fs = require("fs");
import { Query, Stats } from "./models";
import { execQuery, killAllPools } from "./db-client";
const { GROUP_MAPPING } = require("./group-mapping");
const { SQL_QUERIES, ANALYTICS_QUERY, replaceKeys } = require("./queries");
const { parseAnalytics } = require("./analyze.js");

let groupName = "teacher"; // default group
const args = process.argv.slice(2);

const index = args.findIndex((arg) => arg.startsWith("--classname"));
if (index !== -1 && args[index + 1]) {
  groupName = args[index + 1];
  //console.log("Classname parameter:", groupName);
} else {
  console.error("invalid parameter --classname");
}
let analytics: Stats;
const jsonString = fs.readFileSync("./_secret/secret-env.json", "utf8");
const jsonData = JSON.parse(jsonString);
const sqlConnectionString = jsonData[groupName].sqlstring;
const mappedQueries = SQL_QUERIES.map((q: Query) => {
  return replaceKeys(GROUP_MAPPING[groupName], q.sql);
});
before(async function (this: any) {
  // this.timeout(5000);
  analytics = await getAnalytics();
});
after(async function (this: any) {
  await killAllPools();
});

describe(`Gruppe ${groupName}`, () => {
  it(`Mindestens 2 Tabellen`, async function (this: any) {
    addContext(this, {
      title: "Tabellen",
      value: analytics.tables,
    });
    expect(analytics.tables.length).to.be.greaterThan(1);
  });
  it(`Mindestens 5 Tabellen`, async function (this: any) {
    addContext(this, {
      title: "Tabellen",
      value: analytics.tables,
    });
    expect(analytics.tables.length).to.be.greaterThan(4);
  });
  it(`Mindestens 6 Tabellen`, async function (this: any) {
    addContext(this, {
      title: "Tabellen",
      value: analytics.tables,
    });
    expect(analytics.tables.length).to.be.greaterThan(5);
  });
  it(`Mindestens 2 verschiedene Data Types`, async function (this: any) {
    addContext(this, {
      title: "columnTypes",
      value: analytics.columnTypes,
    });
    expect(analytics.columnTypes.length).to.be.greaterThan(1);
  });
  it(`Mindestens 4 verschiedene Data Types`, async function (this: any) {
    addContext(this, {
      title: "columnTypes",
      value: analytics.columnTypes,
    });
    expect(analytics.columnTypes.length).to.be.greaterThan(3);
  });
  it(`Mindestens 6 verschiedene Data Types`, async function (this: any) {
    addContext(this, {
      title: "columnTypes",
      value: analytics.columnTypes,
    });
    expect(analytics.columnTypes.length).to.be.greaterThan(5);
  });
  it(`Alle Tabellen mit Primärschlüssel`, async function (this: any) {
    addContext(this, {
      title: "primaryKeys",
      value: analytics.constraints.primaryKeys,
    });
    expect(analytics.tables.length).to.equal(
      analytics.constraints.primaryKeys.length,
    );
  });
  it(`Alle Tabellen mit AutoIncrement`, async function (this: any) {
    addContext(this, {
      title: "autoIncrement",
      value: analytics.constraints.autoIncrement,
    });
    expect(analytics.tables.length).to.equal(
      analytics.constraints.autoIncrement.length,
    );
  });
  it(`Mindestens 1 Fremdschlüssel`, async function (this: any) {
    addContext(this, {
      title: "numberOfForeignKeys",
      value: analytics.constraints.foreignKey,
    });
    expect(analytics.constraints.foreignKey.length).to.be.greaterThan(0);
  });
  it(`Mindestens 2 Fremdschlüssel`, async function (this: any) {
    addContext(this, {
      title: "numberOfForeignKeys",
      value: analytics.constraints.foreignKey,
    });
    expect(analytics.constraints.foreignKey.length).to.be.greaterThan(1);
  });
  it(`Mindestens 3 Fremdschlüssel`, async function (this: any) {
    addContext(this, {
      title: "numberOfForeignKeys",
      value: analytics.constraints.foreignKey,
    });
    expect(analytics.constraints.foreignKey.length).to.be.greaterThan(2);
  });
  it(`UNIQUE Optimierung`, async function (this: any) {
    addContext(this, {
      title: "unique",
      value: analytics.constraints.unique,
    });
    expect(analytics.constraints.unique.length).to.be.greaterThan(0);
  });
  it(`CHECK Optimierung`, async function (this: any) {
    addContext(this, {
      title: "check",
      value: analytics.constraints.check,
    });
    expect(analytics.constraints.check.length).to.be.greaterThan(0);
  });

  SQL_QUERIES.forEach(function (query: Query, i: number) {
    it(`${query.descr}`, async function (this: any) {
      const results = await execQuery(sqlConnectionString, mappedQueries[i]);
      addContext(this, {
        title: "Actual",
        value: results,
      });
      let result = false;
      if (query.validate) {
        result = query.validate(results);
        console.log(query.descr, result);
      }
      expect(result).to.be.true;
    });
  });
});

async function getAnalytics() {
  const results = await execQuery(sqlConnectionString, ANALYTICS_QUERY);

  const analyzed = parseAnalytics(results);

  return analyzed;
}
