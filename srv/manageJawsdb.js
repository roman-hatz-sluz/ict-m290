const fs = require("fs");
const mysqldump = require("mysqldump");
const parseDbUrl = require("parse-database-url");
const { exec } = require("child_process");
const groupsWithPw = require("../_secret/groups_secret.json");

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
  const instances = addons.match(/jawsdb-[a-z0-9\-]+/g) || [];
  console.log("jawsDBInstances", instances);
  const secrets = await listJawsSecrets();
  console.log(secrets);
  return instances;
}

async function listJawsSecrets() {
  let config = await runCommand(`heroku config --app ${appName} --json`);
  config = JSON.parse(config);
  const filtered = Object.fromEntries(
    Object.entries(config).filter(([key]) => key.startsWith("JAWSDB")),
  );

  return filtered;
}

async function deleteJawsDBInstance(addonId) {
  const command = `heroku addons:destroy ${addonId} -a ${appName} --confirm ${appName}`;

  const result = await runCommand(command);
  console.log("database deleted:" + addonId, result);
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

  const prefixes = ["teacher", "al", "cl", "b"];
  const classMapping = {
    al: "MMA22aL",
    cl: "MMA22cL",
    b: "MMA22b",
    teacher: "Teacher",
  };

  let result = {};

  for (let prefix of prefixes) {
    for (let i = 1; i <= 7; i++) {
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
  const filename = `groups_${hasPassword ? "secret" : "public"}.json`;
  fs.writeFileSync(filename, JSON.stringify(result, null, 2), "utf8");
  if (hasPassword) {
    fs.writeFileSync("env.txt", convertToEnv(result));
  }
  console.log(`Data written to ${filename}`, "unused dbs:", jawsDbEnvVars);
}

function convertToEnv(jsonData) {
  let envEntries = "";

  for (let key in jsonData) {
    if (jsonData[key].ENV && jsonData[key].sqlstring) {
      envEntries += `${jsonData[key].ENV}="${jsonData[key].sqlstring}"\n`;
    }
  }

  return envEntries;
}
async function generatePublicJson() {
  await generateJson(false);
}
async function generatePrivateJson() {
  await generateJson(true);
}

async function dumpAllDatabases() {
  for (const key of Object.keys(groupsWithPw)) {
    const parsedConfig = parseDbUrl(groupsWithPw[key].sqlstring);
    const today = new Date().toISOString().split("T")[0];
    const dumpFilePath = path.join(
      __dirname,
      `./../_backup/dumps/${key}_dump_${today}.sql`,
    );

    try {
      // Create MySQL dump using mysqldump
      await mysqldump({
        connection: {
          host: parsedConfig.host,
          user: parsedConfig.user,
          password: parsedConfig.password,
          database: parsedConfig.database,
        },
        dumpToFile: dumpFilePath,
      });
      console.log(`Dump created for ${key} at ${dumpFilePath}_${Date.now()}`);
    } catch (error) {
      console.error(`Failed to create dump for ${key}:`, error);
    }

    // New db needs some time to be available
    await new Promise((resolve) => setTimeout(resolve, 3000));
  }
}

module.exports = {
  generatePublicJson,
  generatePrivateJson,
  listJawsDBInstances,
  createJawsDBInstances,
  createJawsDBInstance,
  dumpAllDatabases,
  deleteAllJawsDBInstances,
};
