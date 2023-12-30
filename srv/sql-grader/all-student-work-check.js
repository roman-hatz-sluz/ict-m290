//npx mocha ./srv/sql-grader/run.test.js --reporter mochawesome --classname teacher

const fs = require("fs");
const { execSync } = require("child_process");

const { GROUP_MAPPING } = require("./group-mapping.js");
const commandTemplate =
  "npx mocha ./srv/sql-grader/run.test.js --reporter mochawesome --classname";
const commandTemplate2 =
  "cp ./mochawesome-report/mochawesome.html ./mochawesome-report/";

Object.entries(GROUP_MAPPING).forEach(([key]) => {
  const command = `${commandTemplate} ${key}`;
  const command2 = `${commandTemplate2}/db-report-${key}.html`;
  try {
    execSync(command, { stdio: "inherit" });
  } catch (error) {
    // console.error(`Error executing command for key "${key}":`, error);
  }
  try {
    execSync(command2, { stdio: "inherit" });
  } catch (error) {}
});
