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
  },
  {
    descr: "Mindestens 3 Bilder bei Hauptkategorien",
    sql: `SELECT DISTINCT(_AN_MAINCATEGORIES_IMAGE) AS image_url FROM _TN_MAINCATEGORIES`,
    validate: (result: any) => {
      return result.length > 2;
    },
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
  },
  {
    descr: "Mindestens 10 Produkte im Grundsortiment",
    sql: `SELECT COUNT(DISTINCT(_AN_PRODUCTS_NAME)) AS "${countColumnName}" FROM _TN_PRODUCTS`,
    validate: (result: any) => {
      return result[0][countColumnName] > 9;
    },
  },
  {
    descr: "Mindestens 1000 Produkte",
    sql: `SELECT COUNT(*) AS "${countColumnName}" FROM _TN_PRODUCTS`,
    validate: (result: any) => {
      return result[0][countColumnName] > 999;
    },
  },
  {
    descr: "Mindestens 10 Bilder bei Produkte",
    sql: `SELECT DISTINCT(_AN_PRODUCTS_IMAGE) AS image_url FROM _TN_PRODUCTS`,
    validate: (result: any) => {
      return result.length > 9;
    },
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
  },

  {
    descr: "Bild bei Produkte: Wert NULL ist erlaubt",
    sql: `SELECT COUNT(COLUMN_NAME) AS "${countColumnName}"
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = '_TN_PRODUCTS'
    AND COLUMN_NAME = '_AN_PRODUCTS_IMAGE'
    AND IS_NULLABLE = 'YES';`,
    validate: (result: any) => {
      const isNullable = result[0][countColumnName] === 1 ? true : false;
      return isNullable;
    },
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
  },
];

const replaceKeys = (mapping: any, query: any) => {
  for (const [key, value] of Object.entries(mapping)) {
    query = query.replaceAll(key, value);
  }
  return query;
};

// table_name	COLUMN_NAME	DATA_TYPE	COLUMN_TYPE	CONSTRAINT_TYPE	REFERENCED_TABLE_NAME	REFERENCED_COLUMN_NAME	CHECK_CLAUSE	auto_increment	unique_constraint
const EXCLUDE_SCHMEMA = "performance_schema";
const ANALYTICS_QUERY = `
SELECT
	t.TABLE_NAME,
	c.COLUMN_NAME,
	c.COLUMN_TYPE,
	t.AUTO_INCREMENT
FROM
	information_schema.TABLES t
	JOIN information_schema.COLUMNS c ON t.TABLE_SCHEMA = c.TABLE_SCHEMA
		AND t.TABLE_NAME = c.TABLE_NAME
WHERE
	t.TABLE_SCHEMA != 'information_schema'
ORDER BY
	t.TABLE_NAME,
	c.COLUMN_NAME;

SELECT
  *
FROM
  information_schema.table_constraints
WHERE
  CONSTRAINT_SCHEMA != "${EXCLUDE_SCHMEMA}";
`;
module.exports = {
  SQL_QUERIES,
  ANALYTICS_QUERY,
  replaceKeys,
};
