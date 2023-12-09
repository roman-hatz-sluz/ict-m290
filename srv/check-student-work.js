const fs = require("fs");
const mysql = require("mysql");
const parseDbUrl = require("parse-database-url");
const jsonString = fs.readFileSync("./_secret/secret-env.json", "utf8");
const jsonData = JSON.parse(jsonString);

const args = process.argv.slice(2);
const groupName = args[0];

const GROUP_MAPPING = {
  al1: {
    TYPE: "Standard",
    _TN_PRODUCTS: "produkt",
    _AN_PRODUCTS_NAME: "name",
    _AN_PRODUCTS_IMAGE: "bild",
    _AN_PRODUCTS_MAINCAT: "hauptkategorie_id",
    _TN_MAINCATEGORIES: "hauptkategorie",
    _AN_MAINCATEGORIES_IMAGE: "bild",
    _AN_MAINCATEGORIES_ID: "hauptkategorie_id",
    _AN_CATEGORY_1: "grösse",
    _AN_CATEGORY_2: "farbe",
    _AN_CATEGORY_3: "material",
  },
  al2: {
    TYPE: "Standard",
    _TN_PRODUCTS: "product",
    _AN_PRODUCTS_NAME: "Name",
    _AN_PRODUCTS_IMAGE: "Image_URL",
    _AN_PRODUCTS_MAINCAT: "Drink_type_id",
    _TN_MAINCATEGORIES: "drink_type",
    _AN_MAINCATEGORIES_IMAGE: "Image",
    _AN_MAINCATEGORIES_ID: "Drink_type_id",
    _AN_CATEGORY_1: "Packaging",
    _AN_CATEGORY_2: "Is_vegan",
    _AN_CATEGORY_3: "Quantity_cl",
  },
  al3: {
    TYPE: "Standard",
    _TN_PRODUCTS: "produkte",
    _AN_PRODUCTS_NAME: "name",
    _AN_PRODUCTS_IMAGE: "produkt_bild",
    _AN_PRODUCTS_MAINCAT: "hauptkategorie_id",
    _TN_MAINCATEGORIES: "hauptkategorie",
    _AN_MAINCATEGORIES_IMAGE: "hauptkategorie_picture",
    _AN_MAINCATEGORIES_ID: "hauptkategorie_id",
    _AN_CATEGORY_1: "saitenpaket",
    _AN_CATEGORY_2: "neck",
    _AN_CATEGORY_3: "farbe",
  },
  al4: {
    _TN_PRODUCTS: "produkte",
    _AN_PRODUCTS_NAME: "produktnamen",
    _AN_PRODUCTS_IMAGE: "bild_url",
    _AN_PRODUCTS_MAINCAT: "hauptkategorie_id",
    _TN_MAINCATEGORIES: "hauptkategorien",
    _AN_MAINCATEGORIES_IMAGE: "bild",
    _AN_MAINCATEGORIES_ID: "hauptkategorien_id",
    _AN_CATEGORY_1: "grösse",
    _AN_CATEGORY_2: "farbe",
    _AN_CATEGORY_3: "gender",
  },
  al5: {
    _TN_PRODUCTS: "product",
    _AN_PRODUCTS_NAME: "name",
    _AN_PRODUCTS_IMAGE: "product_image",
    _AN_PRODUCTS_MAINCAT: "collection_ID",
    _TN_MAINCATEGORIES: "collection",
    _AN_MAINCATEGORIES_IMAGE: "image",
    _AN_MAINCATEGORIES_ID: "collection_id",
    _AN_CATEGORY_1: "weight",
    _AN_CATEGORY_2: "inventory",
    _AN_CATEGORY_3: "color",
    // @TODO more than 3 cats
    _AN_CATEGORY_4: "size",
  },
  cl1: {
    TYPE: "Standard",
    _TN_PRODUCTS: "produkt",
    _AN_PRODUCTS_NAME: "namen",
    _AN_PRODUCTS_IMAGE: "bild",
    _AN_PRODUCTS_MAINCAT: "hauptkategorie_id",
    _TN_MAINCATEGORIES: "hauptkategorie",
    _AN_MAINCATEGORIES_IMAGE: "hauptkategorie_id",
    _AN_MAINCATEGORIES_ID: "bild",
    _AN_CATEGORY_1: "grösse",
    _AN_CATEGORY_2: "segment",
    _AN_CATEGORY_3: "belag",
  },
  cl2: {
    TYPE: "Standard",
    _TN_PRODUCTS: "produkte",
    _TN_MAINCATEGORIES: "hauptkategorie",
    _AN_PRODUCTS_NAME: "name",
    _AN_PRODUCTS_IMAGE: "bild",
    _AN_PRODUCTS_MAINCAT: "hauptkategorie_id",
    _AN_CATEGORY_1: "betriebssystem",
    _AN_CATEGORY_2: "speicher",
    _AN_CATEGORY_3: "farbe",
    _AN_MAINCATEGORIES_IMAGE: "bild",
    _AN_MAINCATEGORIES_ID: "hauptkategorie_id",
  },
  cl3: {
    TYPE: "Standard",
    _TN_PRODUCTS: "produkt",
    _TN_MAINCATEGORIES: "hauptkategorie",
    _AN_PRODUCTS_NAME: "produktname",
    // _AN_PRODUCTS_IMAGE fehlt noch
    _AN_PRODUCTS_IMAGE: "produktname",
    _AN_PRODUCTS_MAINCAT: "hauptkategorie_id",
    _AN_CATEGORY_1: "farbe",
    _AN_CATEGORY_2: "felgen_in_zoll",
    _AN_CATEGORY_3: "innenausstattung",
    _AN_MAINCATEGORIES_IMAGE: "bild",
    _AN_MAINCATEGORIES_ID: "hauptkategorie_id",
  },
  cl4: {
    TYPE: "Standard",
    _TN_PRODUCTS: "produkte",
    _TN_MAINCATEGORIES: "hauptkategorien",
    _AN_PRODUCTS_NAME: "Produktname",
    _AN_PRODUCTS_IMAGE: "Bild_URL",
    _AN_PRODUCTS_MAINCAT: "hauptkategorie_id",
    _AN_CATEGORY_1: "Grösse",
    _AN_CATEGORY_2: "Geschmack",
    _AN_CATEGORY_3: "Farbe",
    _AN_MAINCATEGORIES_IMAGE: "Bild",
    _AN_MAINCATEGORIES_ID: "hauptkategorie_id",
  },
  cl5: {
    TYPE: "Standard",
    _TN_PRODUCTS: "",
    _TN_MAINCATEGORIES: "",
    _AN_PRODUCTS_NAME: "",
    _AN_PRODUCTS_IMAGE: "",
    _AN_PRODUCTS_MAINCAT: "",
    _AN_CATEGORY_1: "",
    _AN_CATEGORY_2: "",
    _AN_CATEGORY_3: "",
    _AN_MAINCATEGORIES_IMAGE: "",
    _AN_MAINCATEGORIES_ID: "",
  },
  b1: {
    TYPE: "Standard",
    _TN_PRODUCTS: "produkte",
    _TN_MAINCATEGORIES: "hauptkategorien",
    _AN_PRODUCTS_NAME: "name",
    _AN_PRODUCTS_IMAGE: "bild",
    _AN_PRODUCTS_MAINCAT: "id_hauptkategorie",
    _AN_CATEGORY_1: "art",
    _AN_CATEGORY_2: "sprache",
    _AN_CATEGORY_3: "medium",
    _AN_MAINCATEGORIES_IMAGE: "bild",
    _AN_MAINCATEGORIES_ID: "id_hauptkategorie",
  },
  b2: {
    TYPE: "Standard",
    _TN_PRODUCTS: "produkte",
    _TN_MAINCATEGORIES: "hauptkategorien",
    _AN_PRODUCTS_NAME: "Name",
    _AN_PRODUCTS_IMAGE: "Bild",
    _AN_PRODUCTS_MAINCAT: "Hauptkategorien_id",
    _AN_CATEGORY_1: "Farbe",
    _AN_CATEGORY_2: "Brillenform",
    _AN_CATEGORY_3: "Material",
    _AN_MAINCATEGORIES_IMAGE: "Bild",
    _AN_MAINCATEGORIES_ID: "Hauptkategorien_id",
  },
  b3: {
    TYPE: "Standard",
    _TN_PRODUCTS: "products",
    _TN_MAINCATEGORIES: "main_category",
    _AN_PRODUCTS_NAME: "name",
    _AN_PRODUCTS_IMAGE: "picture_url",
    _AN_PRODUCTS_MAINCAT: "main_category_id",
    _AN_CATEGORY_1: "haircaire_type",
    _AN_CATEGORY_2: "hairtype",
    _AN_CATEGORY_3: "quantity_ml",
    _AN_MAINCATEGORIES_IMAGE: "picture",
    _AN_MAINCATEGORIES_ID: "main_category_id",
  },
  b4: {
    TYPE: "Standard",
    _TN_PRODUCTS: "produkt",
    _TN_MAINCATEGORIES: "hauptkategorie",
    _AN_PRODUCTS_NAME: "name",
    _AN_PRODUCTS_IMAGE: "bild",
    _AN_PRODUCTS_MAINCAT: "hauptkategorie_id",
    _AN_CATEGORY_1: "autor",
    _AN_CATEGORY_2: "altersempfehlung",
    _AN_CATEGORY_3: "seitenzahl",
    _AN_MAINCATEGORIES_IMAGE: "bild",
    _AN_MAINCATEGORIES_ID: "hauptkategorie_id",
  },
  b5: {
    TYPE: "Standard",
    _TN_PRODUCTS: "product",
    _TN_MAINCATEGORIES: "brand",
    _AN_PRODUCTS_NAME: "name",
    _AN_PRODUCTS_IMAGE: "image",
    _AN_PRODUCTS_MAINCAT: "brand_id",
    _AN_CATEGORY_1: "color",
    _AN_CATEGORY_2: "pad_count",
    _AN_CATEGORY_3: "portable",
    _AN_MAINCATEGORIES_IMAGE: "brand_image",
    _AN_MAINCATEGORIES_ID: "brand_id",
  },
  b6: {
    TYPE: "Standard",
    _TN_PRODUCTS: "product",
    _TN_MAINCATEGORIES: "maincategory",
    _AN_PRODUCTS_NAME: "name",
    _AN_PRODUCTS_IMAGE: "image",
    _AN_PRODUCTS_MAINCAT: "maincategory_id",
    _AN_CATEGORY_1: "size_in_cm",
    _AN_CATEGORY_2: "color",
    _AN_CATEGORY_3: "pot",
    _AN_MAINCATEGORIES_IMAGE: "image",
    _AN_MAINCATEGORIES_ID: "maincategory_id",
  },
  b7: {
    TYPE: "Standard",
    _TN_PRODUCTS: "Produkt",
    _TN_MAINCATEGORIES: "Marke",
    _AN_PRODUCTS_NAME: "Name",
    _AN_PRODUCTS_IMAGE: "Bild",
    _AN_PRODUCTS_MAINCAT: "Marke_id",
    _AN_CATEGORY_1: "Farbe",
    _AN_CATEGORY_2: "Flex",
    _AN_CATEGORY_3: "Schlägerlänge",
    _AN_CATEGORY_4: "Auslegerseite",
    _AN_MAINCATEGORIES_IMAGE: "Bild",
    _AN_MAINCATEGORIES_ID: "Marke_id",
  },
  DEFAULT: {
    TYPE: "Standard",
    _TN_PRODUCTS: "",
    _TN_MAINCATEGORIES: "",
    _AN_PRODUCTS_NAME: "",
    _AN_PRODUCTS_IMAGE: "",
    _AN_PRODUCTS_MAINCAT: "",
    _AN_CATEGORY_1: "",
    _AN_CATEGORY_2: "",
    _AN_CATEGORY_3: "",
    _AN_MAINCATEGORIES_IMAGE: "",
    _AN_MAINCATEGORIES_ID: "",
  },
};
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
