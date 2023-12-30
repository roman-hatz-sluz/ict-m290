
  -- cl4 --
 
  
    -- (1) Anzahl Hauptkategorien --
    SELECT COUNT(*) AS "Anzahl" FROM hauptkategorien;
    /*
    Resultat:
    [
  {
    "Anzahl": 6
  }
]
    */
    
    -- (2) Bilder bei Hauptkategorien --
    SELECT DISTINCT Bild FROM hauptkategorien;
    /*
    Resultat:
    [
  {
    "Bild": ""
  }
]
    */
    
    -- (3) Produkte ohne passende Hauptkategorie --
    SELECT *
    FROM produkte p
    WHERE p.hauptkategorie_id NOT IN (SELECT hauptkategorie_id FROM hauptkategorien)
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
    "Anzahl": 0
  }
]
    */
    
    -- (5) Anzahl unterschiedliche Produktnamen --
    SELECT COUNT(DISTINCT(Produktname)) AS "Anzahl" FROM produkte;
    /*
    Resultat:
    [
  {
    "Anzahl": 0
  }
]
    */
    
    -- (6) Bilder bei Produkte --
    SELECT DISTINCT Bild_URL FROM produkte;
    /*
    Resultat:
    []
    */
    
    -- (7) Anzahl Duplikate bei Produktvariationen --
    SELECT COUNT(*) AS total_duplicates
    FROM (
        SELECT COUNT(Produktname)
        FROM produkte
        GROUP BY Produktname, Grösse, Geschmack, Farbe
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
        SELECT Produktname, Grösse, Geschmack, Farbe
        FROM produkte
        GROUP BY Produktname, Grösse, Geschmack, Farbe
        HAVING COUNT(*) > 1
    ) as dup
    ON p.Produktname = dup.Produktname AND 
    p.Grösse = dup.Grösse AND 
    p.Geschmack = dup.Geschmack AND 
    p.Farbe = dup.Farbe;;
    /*
    Resultat:
    []
    */
    
