
  -- b2 --
 
  
    -- (1) Anzahl Hauptkategorien --
    SELECT COUNT(*) AS "Anzahl" FROM hauptkategorien;
    /*
    Resultat:
    [
  {
    "Anzahl": 4
  }
]
    */
    
    -- (2) Bilder bei Hauptkategorien --
    SELECT DISTINCT Bild FROM hauptkategorien;
    /*
    Resultat:
    [
  {
    "Bild": "https://ibb.co/q5RJ8Jr"
  },
  {
    "Bild": "https://ibb.co/V9fQ32v   "
  },
  {
    "Bild": "https://ibb.co/x5rNZK5  "
  },
  {
    "Bild": "https://ibb.co/4NSngF8     "
  }
]
    */
    
    -- (3) Produkte ohne passende Hauptkategorie --
    SELECT *
    FROM produkte p
    WHERE p.Hauptkategorien_id NOT IN (SELECT Hauptkategorien_id FROM hauptkategorien)
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
    "Anzahl": 4909
  }
]
    */
    
    -- (5) Anzahl unterschiedliche Produktnamen --
    SELECT COUNT(DISTINCT(Name)) AS "Anzahl" FROM produkte;
    /*
    Resultat:
    [
  {
    "Anzahl": 10
  }
]
    */
    
    -- (6) Bilder bei Produkte --
    SELECT DISTINCT Bild FROM produkte;
    /*
    Resultat:
    [
  {
    "Bild": "https://ibb.co/Nm4rW7j"
  },
  {
    "Bild": "https://ibb.co/4f18xT3"
  },
  {
    "Bild": "https://ibb.co/N13xRYK"
  },
  {
    "Bild": "https://ibb.co/Rbq9RYV"
  },
  {
    "Bild": "https://ibb.co/SNv5JxX"
  },
  {
    "Bild": "https://ibb.co/5jDHXCv"
  },
  {
    "Bild": "https://ibb.co/4PzGywx"
  },
  {
    "Bild": "https://ibb.co/rs7s3FS"
  },
  {
    "Bild": "https://ibb.co/dWLDkLH"
  },
  {
    "Bild": "https://ibb.co/DVh4QLB"
  },
  {
    "Bild": ""
  }
]
    */
    
    -- (7) Anzahl Duplikate bei Produktvariationen --
    SELECT COUNT(*) AS total_duplicates
    FROM (
        SELECT COUNT(Name)
        FROM produkte
        GROUP BY Name, Farbe, Brillenform, Material
        HAVING COUNT(*) > 1
    ) AS duplicates;
    /*
    Resultat:
    [
  {
    "total_duplicates": 8
  }
]
    */
    
    -- (8) Duplikate bei Produktvariationen --
    SELECT p.*
    FROM produkte p
    INNER JOIN (
        SELECT Name, Farbe, Brillenform, Material
        FROM produkte
        GROUP BY Name, Farbe, Brillenform, Material
        HAVING COUNT(*) > 1
    ) as dup
    ON p.Name = dup.Name AND 
    p.Farbe = dup.Farbe AND 
    p.Brillenform = dup.Brillenform AND 
    p.Material = dup.Material;;
    /*
    Resultat:
    [
  {
    "Produkte_id": 502,
    "Name": "Fernsee",
    "Material": "Titan",
    "Preis": 185,
    "Brillenform": "rund",
    "Bild": "",
    "Farbe": "dunkelblau",
    "Menge": 0,
    "Hauptkategorien_id": 3
  },
  {
    "Produkte_id": 3,
    "Name": "Fernsee",
    "Material": "Titan",
    "Preis": 185,
    "Brillenform": "rund",
    "Bild": "https://ibb.co/4f18xT3",
    "Farbe": "dunkelblau",
    "Menge": 30,
    "Hauptkategorien_id": 3
  },
  {
    "Produkte_id": 1073,
    "Name": "Lesee",
    "Material": "Kunststoff",
    "Preis": 250,
    "Brillenform": "oval",
    "Bild": "",
    "Farbe": "dunkelgrün",
    "Menge": 0,
    "Hauptkategorien_id": 2
  },
  {
    "Produkte_id": 4,
    "Name": "Lesee",
    "Material": "Kunststoff",
    "Preis": 250,
    "Brillenform": "oval",
    "Bild": "https://ibb.co/N13xRYK",
    "Farbe": "dunkelgrün",
    "Menge": 27,
    "Hauptkategorien_id": 2
  },
  {
    "Produkte_id": 1725,
    "Name": "Sportsee",
    "Material": "Horn",
    "Preis": 329,
    "Brillenform": "aviator",
    "Bild": "",
    "Farbe": "rot",
    "Menge": 0,
    "Hauptkategorien_id": 4
  },
  {
    "Produkte_id": 5,
    "Name": "Sportsee",
    "Material": "Horn",
    "Preis": 329,
    "Brillenform": "aviator",
    "Bild": "https://ibb.co/Rbq9RYV",
    "Farbe": "rot",
    "Menge": 24,
    "Hauptkategorien_id": 4
  },
  {
    "Produkte_id": 6,
    "Name": "Doublesee",
    "Material": "Glas",
    "Preis": 899,
    "Brillenform": "rechteckig",
    "Bild": "https://ibb.co/SNv5JxX",
    "Farbe": "gelb",
    "Menge": 18,
    "Hauptkategorien_id": 1
  },
  {
    "Produkte_id": 7,
    "Name": "Shortsee",
    "Material": "Bambus",
    "Preis": 89,
    "Brillenform": "rahmenlos",
    "Bild": "https://ibb.co/5jDHXCv",
    "Farbe": "violett",
    "Menge": 46,
    "Hauptkategorien_id": 2
  },
  {
    "Produkte_id": 8,
    "Name": "Longsee",
    "Material": "Gummi",
    "Preis": 349,
    "Brillenform": "Schmetterling",
    "Bild": "https://ibb.co/4PzGywx",
    "Farbe": "schwarz",
    "Menge": 12,
    "Hauptkategorien_id": 3
  },
  {
    "Produkte_id": 9,
    "Name": "TopPerformance",
    "Material": "Gummi",
    "Preis": 429,
    "Brillenform": "rund",
    "Bild": "https://ibb.co/rs7s3FS",
    "Farbe": "weiss",
    "Menge": 8,
    "Hauptkategorien_id": 4
  },
  {
    "Produkte_id": 11,
    "Name": "Farsee",
    "Material": "Titan",
    "Preis": 129,
    "Brillenform": "rechteckig",
    "Bild": "https://ibb.co/DVh4QLB",
    "Farbe": "braun",
    "Menge": 40,
    "Hauptkategorien_id": 3
  },
  {
    "Produkte_id": 2296,
    "Name": "Doublesee",
    "Material": "Glas",
    "Preis": 899,
    "Brillenform": "rechteckig",
    "Bild": "",
    "Farbe": "gelb",
    "Menge": 0,
    "Hauptkategorien_id": 1
  },
  {
    "Produkte_id": 2867,
    "Name": "Shortsee",
    "Material": "Bambus",
    "Preis": 89,
    "Brillenform": "rahmenlos",
    "Bild": "",
    "Farbe": "violett",
    "Menge": 0,
    "Hauptkategorien_id": 2
  },
  {
    "Produkte_id": 3438,
    "Name": "Longsee",
    "Material": "Gummi",
    "Preis": 349,
    "Brillenform": "schmetterling",
    "Bild": "",
    "Farbe": "schwarz",
    "Menge": 0,
    "Hauptkategorien_id": 3
  },
  {
    "Produkte_id": 3509,
    "Name": "TopPerformance",
    "Material": "Gummi",
    "Preis": 429,
    "Brillenform": "rund",
    "Bild": "",
    "Farbe": "weiss",
    "Menge": 0,
    "Hauptkategorien_id": 4
  },
  {
    "Produkte_id": 4711,
    "Name": "Farsee",
    "Material": "Titan",
    "Preis": 129,
    "Brillenform": "rechteckig",
    "Bild": "",
    "Farbe": "braun",
    "Menge": 0,
    "Hauptkategorien_id": 3
  }
]
    */
    
