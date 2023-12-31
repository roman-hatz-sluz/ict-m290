import * as mysql from "mysql";
const parseDbUrl = require("parse-database-url");

// Pool storage to manage different configurations
const pools: { [key: string]: mysql.Pool } = {};

const getPool = (sqlConnectionString: string): mysql.Pool => {
  const parsedConfig = parseDbUrl(sqlConnectionString);
  parsedConfig.multipleStatements = true;

  const configString = JSON.stringify(parsedConfig);
  if (!pools[configString]) {
    pools[configString] = mysql.createPool(parsedConfig);
  }

  return pools[configString];
};

const execQuery = async (
  sqlConnectionString: string,
  sql: string,
): Promise<mysql.Query[]> => {
  const pool = getPool(sqlConnectionString);

  try {
    const connection = await new Promise<mysql.Connection>(
      (resolve, reject) => {
        pool.getConnection((err, connection) => {
          if (err) {
            console.error("Error getting connection from pool", err);
            reject(err);
          } else {
            resolve(connection);
          }
        });
      },
    );

    try {
      const results = await new Promise<mysql.Query[]>((resolve, reject) => {
        connection.query(sql, (err, results) => {
          if (err) {
            console.error("Query execution error", err);
            reject(err);
          } else {
            resolve(results);
          }
        });
      });

      return results;
    } finally {
      // @ts-ignore
      connection.release(); // Release connection back to the pool
    }
  } catch (error) {
    throw error;
  }
};

const killAllPools = async (): Promise<void> => {
  const poolClosePromises = Object.values(pools).map(
    (pool) =>
      new Promise<void>((resolve, reject) => {
        pool.end((err) => {
          if (err) {
            console.error("Error closing the connection pool", err);
            reject(err);
          } else {
            resolve();
          }
        });
      }),
  );

  try {
    // Wait for all pools to close
    await Promise.all(poolClosePromises);
    console.log("All connection pools closed successfully");
  } catch (error) {
    console.error("Error occurred while closing pools", error);
    throw error;
  }
};

export { execQuery, killAllPools };
