
  -- al5 --
 
  
    -- (1) Anzahl Hauptkategorien --
    SELECT COUNT(*) AS "Anzahl" FROM collection;
    /*
    Resultat:
    [
  {
    "Anzahl": 0
  }
]
    */
    
    -- (2) Bilder bei Hauptkategorien --
    SELECT DISTINCT image FROM collection;
    /*
    Resultat:
    []
    */
    
    -- (3) Produkte ohne passende Hauptkategorie --
    SELECT *
    FROM product p
    WHERE p.collection_ID NOT IN (SELECT collection_id FROM collection)
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
    "Anzahl": 0
  }
]
    */
    
    -- (5) Anzahl unterschiedliche Produktnamen --
    SELECT COUNT(DISTINCT(name)) AS "Anzahl" FROM product;
    /*
    Resultat:
    [
  {
    "Anzahl": 0
  }
]
    */
    
    -- (6) Bilder bei Produkte --
    SELECT DISTINCT product_image FROM product;
    /*
    Resultat:
    []
    */
    
    -- (7) Anzahl Duplikate bei Produktvariationen --
    SELECT COUNT(*) AS total_duplicates
    FROM (
        SELECT COUNT(name)
        FROM product
        GROUP BY name, weight, inventory, color
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
        SELECT name, weight, inventory, color
        FROM product
        GROUP BY name, weight, inventory, color
        HAVING COUNT(*) > 1
    ) as dup
    ON p.name = dup.name AND 
    p.weight = dup.weight AND 
    p.inventory = dup.inventory AND 
    p.color = dup.color;;
    /*
    Resultat:
    []
    */
    
