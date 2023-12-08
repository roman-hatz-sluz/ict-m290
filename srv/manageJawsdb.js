const fs = require("fs");
const parseDbUrl = require("parse-database-url");
const { exec } = require("child_process");

const appName = "ict-290"; // Replace with your app name

function runCommand(command) {
  return new Promise((resolve, reject) => {
    exec(command, (error, stdout, stderr) => {
      if (error) {
        console.error(`exec error: ${error}`);
        reject(error);
        return;
      }
      resolve(stdout.trim());
    });
  });
}

async function createJawsDBInstance() {
  try {
    const result = await runCommand(
      `heroku addons:create jawsdb:kitefin -a ${appName}`,
    );
    console.log(result);
  } catch (error) {
    console.error("Error:", error);
  }
}

async function createJawsDBInstances(count) {
  for (let i = 0; i < count; i++) {
    try {
      await createJawsDBInstance();
    } catch (error) {
      console.error("Error:", error);
    }
  }
}

async function listJawsDBInstances() {
  const addons = await runCommand(`heroku addons --all -a ${appName}`);
  const matches = addons.match(/jawsdb-[a-z0-9\-]+/g) || [];
  console.log("jawsDBInstances", matches);
  return matches;
}

async function deleteJawsDBInstance(addonId) {
  const command = `heroku addons:destroy ${addonId} -a ${appName} --confirm ${appName}`;

  const result = await runCommand(command);
  console.log(result);
}

async function deleteAllJawsDBInstances() {
  const jawsDBInstances = await listJawsDBInstances();

  for (const instance of jawsDBInstances) {
    await deleteJawsDBInstance(instance);
  }
}

async function fetchJawsDbEnvVars() {
  const configVars = await runCommand(`heroku config -a ${appName}`);
  return configVars
    .split("\n")
    .map((line) => line.split(":")[0].trim())
    .filter((varName) => varName.startsWith("JAWSDB_"));
}

async function generateJson(hasPassword) {
  const jawsDbEnvVars = await fetchJawsDbEnvVars();

  const prefixes = ["al", "cl", "b"];
  const classMapping = {
    al: "MMA21-aL",
    cl: "MMA21-cL",
    b: "MMA21-b",
  };

  let result = {};

  for (let prefix of prefixes) {
    for (let i = 1; i <= 10; i++) {
      const key = `${prefix}${i}`;
      const envVar = jawsDbEnvVars.shift(); // Take the next available env var
      if (!envVar) break; // If there are no more env vars, break out of the loop

      result[key] = {
        name: "",
        class: classMapping[prefix],
        ENV: envVar,
      };
      if (hasPassword) {
        const configVar = await runCommand(
          `heroku config:get ${envVar} -a ${appName}`,
        );
        result[key].password = parseDbUrl(configVar).password;
        result[key].sqlstring = configVar;
      }
    }
  }
  const ts = new Date()
    .toISOString()
    .replace(/T/, "--")
    .replace(/:/, "-")
    .split(".")[0]
    .replace(":", "_");
  const filename = `groups.json_${ts}`;
  fs.writeFileSync(filename, JSON.stringify(result, null, 2), "utf8");
  console.log(`Data written to ${filename}`);
}
async function generatePublicJson() {
  await generateJson(false);
}
async function generatePrivateJson() {
  await generateJson(true);
}

module.exports = {
  generatePublicJson,
  generatePrivateJson,
  listJawsDBInstances,
  createJawsDBInstances,
  createJawsDBInstance,
  deleteAllJawsDBInstances,
};
