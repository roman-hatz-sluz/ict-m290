
  -- al4 --
 
  
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
    SELECT DISTINCT bild FROM hauptkategorien;
    /*
    Resultat:
    [
  {
    "bild": {
      "type": "Buffer",
      "data": []
    }
  }
]
    */
    
    -- (3) Produkte ohne passende Hauptkategorie --
    SELECT *
    FROM produkte p
    WHERE p.hauptkategorie_id NOT IN (SELECT hauptkategorien_id FROM hauptkategorien)
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
    "Anzahl": 10
  }
]
    */
    
    -- (5) Anzahl unterschiedliche Produktnamen --
    SELECT COUNT(DISTINCT(produktnamen)) AS "Anzahl" FROM produkte;
    /*
    Resultat:
    [
  {
    "Anzahl": 10
  }
]
    */
    
    -- (6) Bilder bei Produkte --
    SELECT DISTINCT bild_url FROM produkte;
    /*
    Resultat:
    [
  {
    "bild_url": ""
  }
]
    */
    
    -- (7) Anzahl Duplikate bei Produktvariationen --
    SELECT COUNT(*) AS total_duplicates
    FROM (
        SELECT COUNT(produktnamen)
        FROM produkte
        GROUP BY produktnamen, grösse, farbe, gender
        HAVING COUNT(*) > 1
    ) AS duplicates;
    /*
    Resultat:
    [
  {
    "total_duplicates": 0
  }
]
    */
    
    -- (8) Duplikate bei Produktvariationen --
    SELECT p.*
    FROM produkte p
    INNER JOIN (
        SELECT produktnamen, grösse, farbe, gender
        FROM produkte
        GROUP BY produktnamen, grösse, farbe, gender
        HAVING COUNT(*) > 1
    ) as dup
    ON p.produktnamen = dup.produktnamen AND 
    p.grösse = dup.grösse AND 
    p.farbe = dup.farbe AND 
    p.gender = dup.gender;;
    /*
    Resultat:
    []
    */
    
