
  -- b6 --
 
  
    -- (1) Anzahl Hauptkategorien --
    SELECT COUNT(*) AS "Anzahl" FROM maincategory;
    /*
    Resultat:
    [
  {
    "Anzahl": 5
  }
]
    */
    
    -- (2) Bilder bei Hauptkategorien --
    SELECT DISTINCT image FROM maincategory;
    /*
    Resultat:
    [
  {
    "image": ""
  }
]
    */
    
    -- (3) Produkte ohne passende Hauptkategorie --
    SELECT *
    FROM product p
    WHERE p.maincategory_id NOT IN (SELECT maincategory_id FROM maincategory)
     ;
    /*
    Resultat:
    []
    */
    
    -- (4) Anzahl Produkte --
    SELECT COUNT(*) AS "Anzahl" FROM product;
    /*
    Resultat:
    [
  {
    "Anzahl": 1440
  }
]
    */
    
    -- (5) Anzahl unterschiedliche Produktnamen --
    SELECT COUNT(DISTINCT(name)) AS "Anzahl" FROM product;
    /*
    Resultat:
    [
  {
    "Anzahl": 10
  }
]
    */
    
    -- (6) Bilder bei Produkte --
    SELECT DISTINCT image FROM product;
    /*
    Resultat:
    [
  {
    "image": ""
  }
]
    */
    
    -- (7) Anzahl Duplikate bei Produktvariationen --
    SELECT COUNT(*) AS total_duplicates
    FROM (
        SELECT COUNT(name)
        FROM product
        GROUP BY name, size_in_cm, color, pot
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
    FROM product p
    INNER JOIN (
        SELECT name, size_in_cm, color, pot
        FROM product
        GROUP BY name, size_in_cm, color, pot
        HAVING COUNT(*) > 1
    ) as dup
    ON p.name = dup.name AND 
    p.size_in_cm = dup.size_in_cm AND 
    p.color = dup.color AND 
    p.pot = dup.pot;;
    /*
    Resultat:
    []
    */
    
