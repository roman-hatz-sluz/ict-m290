import { Query } from "./models";

const countColumnName = "Anzahl";

const SQL_QUERIES: Query[] = [
  // Hauptkategorien
  {
    descr: "Mindestens 3 Hauptkategorien",
    sql: `SELECT COUNT(*) AS "${countColumnName}" FROM _TN_MAINCATEGORIES`,
    validate: (result: any) => {
      return result[0][countColumnName] > 2;
    },
    points: 0.5,
  },
  {
    descr: "Mindestens 3 Bilder bei Hauptkategorien",
    sql: `SELECT COUNT(DISTINCT _AN_MAINCATEGORIES_IMAGE) AS "${countColumnName}" FROM _TN_MAINCATEGORIES`,
    validate: (result: any) => {
      return result[0][countColumnName] > 2;
    },
    points: 0.5,
  },
  {
    descr: "Keine Produkte ohne Hauptkategorie",
    sql: `SELECT COUNT(*) AS "${countColumnName}"
      FROM _TN_PRODUCTS p
      WHERE p._AN_PRODUCTS_MAINCAT NOT IN (SELECT _AN_MAINCATEGORIES_ID FROM _TN_MAINCATEGORIES)
       `,
    validate: (result: any) => {
      return result[0][countColumnName] === 0;
    },
    points: 0.5,
  },
  {
    descr: "Mindestens 10 Produkte im Grundsortiment",
    sql: `SELECT COUNT(DISTINCT(_AN_PRODUCTS_NAME)) AS "${countColumnName}" FROM _TN_PRODUCTS`,
    validate: (result: any) => {
      return result[0][countColumnName] > 9;
    },
    points: 0.5,
  },
  {
    descr: "Mindestens 1000 Produkte",
    sql: `SELECT COUNT(*) AS "${countColumnName}" FROM _TN_PRODUCTS`,
    validate: (result: any) => {
      return result[0][countColumnName] > 999;
    },
    points: 1,
  },
  {
    descr: "Mindestens 10 Bilder bei Produkte",
    sql: `SELECT COUNT(DISTINCT _AN_PRODUCTS_IMAGE) AS "${countColumnName}" FROM _TN_PRODUCTS`,
    validate: (result: any) => {
      return result[0][countColumnName] > 9;
    },
    points: 0.5,
  },
  {
    descr: "Keine Duplikate bei Produktvariationen",
    sql: `SELECT COUNT(*) AS "${countColumnName}"
      FROM (
          SELECT COUNT(_AN_PRODUCTS_NAME)
          FROM _TN_PRODUCTS
          GROUP BY _AN_PRODUCTS_NAME, _AN_CATEGORY_1, _AN_CATEGORY_2, _AN_CATEGORY_3
          HAVING COUNT(*) > 1
      ) AS duplicates`,
    validate: (result: any) => {
      return result[0][countColumnName] === 0;
    },
    points: 0.5,
  },
  {
    descr: "Nicht mehr als 10 Duplikate bei Produktvariationen",
    sql: `SELECT COUNT(*) AS "${countColumnName}"
      FROM (
          SELECT COUNT(_AN_PRODUCTS_NAME)
          FROM _TN_PRODUCTS
          GROUP BY _AN_PRODUCTS_NAME, _AN_CATEGORY_1, _AN_CATEGORY_2, _AN_CATEGORY_3
          HAVING COUNT(*) > 1
      ) AS duplicates`,
    validate: (result: any) => {
      return result[0][countColumnName] < 10;
    },
    points: 0.25,
  },
  {
    descr: "Nicht mehr als 100 Duplikate bei Produktvariationen",
    sql: `SELECT COUNT(*) AS "${countColumnName}"
      FROM (
          SELECT COUNT(_AN_PRODUCTS_NAME)
          FROM _TN_PRODUCTS
          GROUP BY _AN_PRODUCTS_NAME, _AN_CATEGORY_1, _AN_CATEGORY_2, _AN_CATEGORY_3
          HAVING COUNT(*) > 1
      ) AS duplicates`,
    validate: (result: any) => {
      return result[0][countColumnName] < 100;
    },
    points: 0.25,
  },
  {
    descr: "Mindestens eine numerische Kategorie",
    sql: `SELECT   
    CASE 
      WHEN _AN_CATEGORY_1 REGEXP '^-?[0-9]+\\.?[0-9]*$' THEN 1
      WHEN _AN_CATEGORY_2 REGEXP '^-?[0-9]+\\.?[0-9]*$' THEN 1
      WHEN _AN_CATEGORY_3 REGEXP '^-?[0-9]+\\.?[0-9]*$' THEN 1
      ELSE 0
    END AS count
  FROM _TN_PRODUCTS
  HAVING count = 1 
  LIMIT 1`,
    validate: (result: any) => {
      // @todo: does not work, always true; REGEXP looks at data i think, not data type name
      return result.length > 0;
    },
    points: 0.5,
  },
  {
    descr: "Bild bei Produkte: Wert NULL ist erlaubt",
    sql: `SELECT COUNT(COLUMN_NAME) AS "${countColumnName}"
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = '_TN_PRODUCTS'
    AND COLUMN_NAME = '_AN_PRODUCTS_IMAGE'
    AND IS_NULLABLE = 'YES';`,
    validate: (result: any) => {
      return Number(result[0][countColumnName]) === 1;
    },
    points: 0.5,
  },
  // Setzen Sie UNIQUE für Email. Email muss für jeden Kunden eindeutig sein. Fügen Sie alle Kunden hinzu.
  // CHECK Constraint
  /*
  {
    descr: "Mindestens   ",
    sql: `SELECT COUNT(*) AS "${countColumnName}" FROM _TN_MAINCATEGORIES`,
    validate: (result: any) => {
      return result[0][countColumnName] > 2;
    },
    points: 0.5,
  },

  */
];

const replaceKeys = (mapping: any, query: any) => {
  for (const [key, value] of Object.entries(mapping)) {
    query = query.replaceAll(key, value);
  }
  return query;
};
const ANALYTICS_QUERY = `
SET SESSION group_concat_max_len = 1000000;
SET @sql = NULL;

SELECT GROUP_CONCAT(
           CONCAT(
             'SELECT "', 
             t.table_name, 
             '" AS table_name, c.column_name, c.data_type, c.column_type, ',
             'tc.constraint_type, kcu.referenced_table_name, kcu.referenced_column_name ',
             'FROM information_schema.columns c ',
             'LEFT JOIN information_schema.key_column_usage kcu ON c.table_name = kcu.table_name AND c.column_name = kcu.column_name AND c.table_schema = kcu.table_schema ',
             'LEFT JOIN information_schema.table_constraints tc ON kcu.constraint_name = tc.constraint_name AND kcu.table_schema = tc.table_schema AND kcu.table_name = tc.table_name ',
             'WHERE c.table_schema = "', t.table_schema, '" AND c.table_name = "', t.table_name  , ' "'
           ) 
           SEPARATOR ' UNION ALL '
       )
INTO @sql
FROM information_schema.tables t
WHERE t.table_schema NOT IN ('information_schema', 'performance_schema', 'mysql', 'sys')
ORDER BY t.table_name ;

PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
`;
module.exports = {
  SQL_QUERIES,
  ANALYTICS_QUERY,
  replaceKeys,
};
