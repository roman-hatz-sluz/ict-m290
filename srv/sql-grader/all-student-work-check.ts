//npx mocha ./srv/sql-grader/run.test.js --reporter mochawesome --classname teacher

const { execSync } = require("child_process");

const { GROUP_MAPPING } = require("./group-mapping.js");
const commandTemplate =
  "npx mocha ./srv/sql-grader/dist/run.test.js --reporter mochawesome --classname";
const commandTemplate2 =
  "cp ./mochawesome-report/mochawesome.html ./_secret/grades/";

Object.entries(GROUP_MAPPING).forEach(([key]) => {
  const command = `${commandTemplate} ${key}`;
  const command2 = `${commandTemplate2}/${key}-db-report.html`;
  try {
    execSync(command, { stdio: "inherit" });
  } catch (error) {
    // console.error(`Error executing command for key "${key}":`, error);
  }
  try {
    console.log("command2", command2);
    execSync(command2, { stdio: "inherit" });
  } catch (error) {}
});
