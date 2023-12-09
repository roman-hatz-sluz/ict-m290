
  -- cl2 --
 
  
    -- (1) Anzahl Hauptkategorien --
    SELECT COUNT(*) AS "Anzahl" FROM hauptkategorie;
    /*
    Resultat:
    [
  {
    "Anzahl": 5
  }
]
    */
    
    -- (2) Bilder bei Hauptkategorien --
    SELECT DISTINCT bild FROM hauptkategorie;
    /*
    Resultat:
    [
  {
    "bild": "0"
  }
]
    */
    
    -- (3) Produkte ohne passende Hauptkategorie --
    SELECT *
    FROM produkte p
    WHERE p.hauptkategorie_id NOT IN (SELECT hauptkategorie_id FROM hauptkategorie)
     ;
    /*
    Resultat:
    []
    */
    
    -- (4) Anzahl Produkte --
    SELECT COUNT(*) AS "Anzahl" FROM produkte;
    /*
    Resultat:
    [
  {
    "Anzahl": 1510
  }
]
    */
    
    -- (5) Anzahl unterschiedliche Produktnamen --
    SELECT COUNT(DISTINCT(name)) AS "Anzahl" FROM produkte;
    /*
    Resultat:
    [
  {
    "Anzahl": 10
  }
]
    */
    
    -- (6) Bilder bei Produkte --
    SELECT DISTINCT bild FROM produkte;
    /*
    Resultat:
    [
  {
    "bild": "0"
  },
  {
    "bild": null
  }
]
    */
    
    -- (7) Anzahl Duplikate bei Produktvariationen --
    SELECT COUNT(*) AS total_duplicates
    FROM (
        SELECT COUNT(name)
        FROM produkte
        GROUP BY name, betriebssystem, speicher, farbe
        HAVING COUNT(*) > 1
    ) AS duplicates;
    /*
    Resultat:
    [
  {
    "total_duplicates": 9
  }
]
    */
    
    -- (8) Duplikate bei Produktvariationen --
    SELECT p.*
    FROM produkte p
    INNER JOIN (
        SELECT name, betriebssystem, speicher, farbe
        FROM produkte
        GROUP BY name, betriebssystem, speicher, farbe
        HAVING COUNT(*) > 1
    ) as dup
    ON p.name = dup.name AND 
    p.betriebssystem = dup.betriebssystem AND 
    p.speicher = dup.speicher AND 
    p.farbe = dup.farbe;;
    /*
    Resultat:
    [
  {
    "produkte_id": 36,
    "name": "Iphone 15",
    "lagerbestand": 0,
    "preis": 849,
    "speicher": 128,
    "betriebssystem": "IOS",
    "farbe": "Midnight black",
    "bild": null,
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 1,
    "name": "Iphone 15",
    "lagerbestand": 0,
    "preis": 849,
    "speicher": 128,
    "betriebssystem": "IOS",
    "farbe": "Midnight black",
    "bild": "0",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 217,
    "name": "Iphone 14",
    "lagerbestand": 0,
    "preis": 749,
    "speicher": 256,
    "betriebssystem": "KaiOs",
    "farbe": "Rubin red",
    "bild": null,
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 2,
    "name": "Iphone 14",
    "lagerbestand": 0,
    "preis": 749,
    "speicher": 256,
    "betriebssystem": "KaiOs",
    "farbe": "Rubin Red",
    "bild": "0",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 388,
    "name": "Iphone 13",
    "lagerbestand": 0,
    "preis": 979,
    "speicher": 512,
    "betriebssystem": "IOS",
    "farbe": "Phantom gray",
    "bild": null,
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 3,
    "name": "Iphone 13",
    "lagerbestand": 0,
    "preis": 979,
    "speicher": 512,
    "betriebssystem": "IOS",
    "farbe": "Phantom gray",
    "bild": "0",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 561,
    "name": "Samsung Galaxy A33",
    "lagerbestand": 0,
    "preis": 249,
    "speicher": 1000,
    "betriebssystem": "IOS",
    "farbe": "Midnight black",
    "bild": null,
    "hauptkategorie_id": 2
  },
  {
    "produkte_id": 4,
    "name": "Samsung Galaxy A33",
    "lagerbestand": 0,
    "preis": 249,
    "speicher": 1000,
    "betriebssystem": "IOS",
    "farbe": "Midnight black",
    "bild": "0",
    "hauptkategorie_id": 2
  },
  {
    "produkte_id": 674,
    "name": "Samsung Galaxy S23",
    "lagerbestand": 0,
    "preis": 849,
    "speicher": 256,
    "betriebssystem": "Android",
    "farbe": "Forest green",
    "bild": null,
    "hauptkategorie_id": 2
  },
  {
    "produkte_id": 5,
    "name": "Samsung Galaxy S23",
    "lagerbestand": 0,
    "preis": 849,
    "speicher": 256,
    "betriebssystem": "Android",
    "farbe": "Forest green",
    "bild": "0",
    "hauptkategorie_id": 2
  },
  {
    "produkte_id": 906,
    "name": "Huawei P60 Pro",
    "lagerbestand": 0,
    "preis": 1305,
    "speicher": 2000,
    "betriebssystem": "EMUI",
    "farbe": "Midnight black",
    "bild": null,
    "hauptkategorie_id": 5
  },
  {
    "produkte_id": 6,
    "name": "Huawei P60 Pro",
    "lagerbestand": 0,
    "preis": 1305,
    "speicher": 2000,
    "betriebssystem": "EMUI",
    "farbe": "Midnight black",
    "bild": "0",
    "hauptkategorie_id": 5
  },
  {
    "produkte_id": 947,
    "name": "Google Pixel 8 Pro",
    "lagerbestand": 0,
    "preis": 999,
    "speicher": 128,
    "betriebssystem": "Android",
    "farbe": "Rubin red",
    "bild": null,
    "hauptkategorie_id": 3
  },
  {
    "produkte_id": 7,
    "name": "Google Pixel 8 Pro",
    "lagerbestand": 0,
    "preis": 999,
    "speicher": 128,
    "betriebssystem": "Android",
    "farbe": "Rubin Red",
    "bild": "0",
    "hauptkategorie_id": 3
  },
  {
    "produkte_id": 1280,
    "name": "XIAOMI Redmi Note 12 Pro+",
    "lagerbestand": 0,
    "preis": 349,
    "speicher": 256,
    "betriebssystem": "Windows",
    "farbe": "Sky blue",
    "bild": null,
    "hauptkategorie_id": 4
  },
  {
    "produkte_id": 9,
    "name": "XIAOMI Redmi Note 12 Pro+",
    "lagerbestand": 0,
    "preis": 349,
    "speicher": 256,
    "betriebssystem": "Windows",
    "farbe": "Sky blue",
    "bild": "0",
    "hauptkategorie_id": 4
  },
  {
    "produkte_id": 1361,
    "name": "XIAOMI Redmi 11",
    "lagerbestand": 0,
    "preis": 179,
    "speicher": 64,
    "betriebssystem": "IOS",
    "farbe": "Midnight black",
    "bild": null,
    "hauptkategorie_id": 4
  },
  {
    "produkte_id": 10,
    "name": "XIAOMI Redmi 11",
    "lagerbestand": 0,
    "preis": 179,
    "speicher": 64,
    "betriebssystem": "IOS",
    "farbe": "Midnight black",
    "bild": "0",
    "hauptkategorie_id": 4
  }
]
    */
    
