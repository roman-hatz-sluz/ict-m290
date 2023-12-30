
  -- cl1 --
 
  
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
    "bild": ""
  }
]
    */
    
    -- (3) Produkte ohne passende Hauptkategorie --
    SELECT *
    FROM produkt p
    WHERE p.hauptkategorie_id NOT IN (SELECT hauptkategorie_id FROM hauptkategorie)
     ;
    /*
    Resultat:
    [
  {
    "produkt_id": 1,
    "hauptkategorie_id": 0,
    "grösse": "160",
    "lagerbestand": "10",
    "fahrlevel": "Fortgeschrittene",
    "preis": 1099,
    "segment": "Allrounder",
    "belag": "Universal",
    "namen": "Montero as",
    "bild": null
  }
]
    */
    
    -- (4) Anzahl Produkte --
    SELECT COUNT(*) AS "Anzahl" FROM produkt;
    /*
    Resultat:
    [
  {
    "Anzahl": 10
  }
]
    */
    
    -- (5) Anzahl unterschiedliche Produktnamen --
    SELECT COUNT(DISTINCT(namen)) AS "Anzahl" FROM produkt;
    /*
    Resultat:
    [
  {
    "Anzahl": 10
  }
]
    */
    
    -- (6) Bilder bei Produkte --
    SELECT DISTINCT bild FROM produkt;
    /*
    Resultat:
    [
  {
    "bild": null
  }
]
    */
    
    -- (7) Anzahl Duplikate bei Produktvariationen --
    SELECT COUNT(*) AS total_duplicates
    FROM (
        SELECT COUNT(namen)
        FROM produkt
        GROUP BY namen, grösse, segment, belag
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
    FROM produkt p
    INNER JOIN (
        SELECT namen, grösse, segment, belag
        FROM produkt
        GROUP BY namen, grösse, segment, belag
        HAVING COUNT(*) > 1
    ) as dup
    ON p.namen = dup.namen AND 
    p.grösse = dup.grösse AND 
    p.segment = dup.segment AND 
    p.belag = dup.belag;;
    /*
    Resultat:
    []
    */
    
