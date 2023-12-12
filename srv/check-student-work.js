const fs = require("fs");
const mysql = require("mysql");
const parseDbUrl = require("parse-database-url");
const { GROUP_MAPPING } = require("./check-students-group-mapping.js");

const jsonString = fs.readFileSync("./_secret/secret-env.json", "utf8");
const jsonData = JSON.parse(jsonString);

const args = process.argv.slice(2);
const groupName = args[0];

const SQL_QUERIES = [
  // Hauptkategorien
  {
    descr: "Anzahl Hauptkategorien",
    sql: `SELECT COUNT(*) AS "Anzahl" FROM _TN_MAINCATEGORIES`,
  },
  {
    descr: "Bilder bei Hauptkategorien",
    sql: `SELECT DISTINCT _AN_MAINCATEGORIES_IMAGE FROM _TN_MAINCATEGORIES`,
  },
  {
    descr: "Produkte ohne passende Hauptkategorie",
    sql: `SELECT *
    FROM _TN_PRODUCTS p
    WHERE p._AN_PRODUCTS_MAINCAT NOT IN (SELECT _AN_MAINCATEGORIES_ID FROM _TN_MAINCATEGORIES)
     `,
  },
  // Produkte
  {
    descr: "Anzahl Produkte",
    sql: `SELECT COUNT(*) AS "Anzahl" FROM _TN_PRODUCTS`,
  },
  {
    descr: "Anzahl unterschiedliche Produktnamen",
    sql: `SELECT COUNT(DISTINCT(_AN_PRODUCTS_NAME)) AS "Anzahl" FROM _TN_PRODUCTS`,
  },
  {
    descr: "Bilder bei Produkte",
    sql: `SELECT DISTINCT _AN_PRODUCTS_IMAGE FROM _TN_PRODUCTS`,
  },
  {
    descr: "Anzahl Duplikate bei Produktvariationen",
    sql: `SELECT COUNT(*) AS total_duplicates
    FROM (
        SELECT COUNT(_AN_PRODUCTS_NAME)
        FROM _TN_PRODUCTS
        GROUP BY _AN_PRODUCTS_NAME, _AN_CATEGORY_1, _AN_CATEGORY_2, _AN_CATEGORY_3
        HAVING COUNT(*) > 1
    ) AS duplicates`,
  },
  {
    descr: "Duplikate bei Produktvariationen",
    sql: `SELECT p.*
    FROM _TN_PRODUCTS p
    INNER JOIN (
        SELECT _AN_PRODUCTS_NAME, _AN_CATEGORY_1, _AN_CATEGORY_2, _AN_CATEGORY_3
        FROM _TN_PRODUCTS
        GROUP BY _AN_PRODUCTS_NAME, _AN_CATEGORY_1, _AN_CATEGORY_2, _AN_CATEGORY_3
        HAVING COUNT(*) > 1
    ) as dup
    ON p._AN_PRODUCTS_NAME = dup._AN_PRODUCTS_NAME AND 
    p._AN_CATEGORY_1 = dup._AN_CATEGORY_1 AND 
    p._AN_CATEGORY_2 = dup._AN_CATEGORY_2 AND 
    p._AN_CATEGORY_3 = dup._AN_CATEGORY_3;`,
  },
];

const run = async () => {
  if (!jsonData[groupName]) {
    console.error("Group not found ", groupName);
    return false;
  }
  const sqlConnectionString = jsonData[groupName].sqlstring;

  const mappedQueries = SQL_QUERIES.map((q, i) => {
    return replaceKeys(GROUP_MAPPING[groupName], q.sql);
  });

  const result = await execQuery(sqlConnectionString, mappedQueries.join(";"));
  let outputStr = `
  -- ${groupName} --\n 
  `;
  mappedQueries.forEach((q, i) => {
    outputStr += `
    -- (${i + 1}) ${SQL_QUERIES[i].descr} --
    ${q};
    /*
    Resultat:
    ${JSON.stringify(result[i], null, 2)}
    */
    `;
  });
  console.log(outputStr);
};

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

const replaceKeys = (mapping, query) => {
  for (const [key, value] of Object.entries(mapping)) {
    query = query.replaceAll(key, value);
  }
  return query;
};

run();
