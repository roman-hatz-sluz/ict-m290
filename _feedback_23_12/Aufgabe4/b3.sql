
  -- b3 --
 
  
    -- (1) Anzahl Hauptkategorien --
    SELECT COUNT(*) AS "Anzahl" FROM main_category;
    /*
    Resultat:
    [
  {
    "Anzahl": 5
  }
]
    */
    
    -- (2) Bilder bei Hauptkategorien --
    SELECT DISTINCT picture FROM main_category;
    /*
    Resultat:
    [
  {
    "picture": ""
  }
]
    */
    
    -- (3) Produkte ohne passende Hauptkategorie --
    SELECT *
    FROM products p
    WHERE p.main_category_id NOT IN (SELECT main_category_id FROM main_category)
     ;
    /*
    Resultat:
    []
    */
    
    -- (4) Anzahl Produkte --
    SELECT COUNT(*) AS "Anzahl" FROM products;
    /*
    Resultat:
    [
  {
    "Anzahl": 10
  }
]
    */
    
    -- (5) Anzahl unterschiedliche Produktnamen --
    SELECT COUNT(DISTINCT(name)) AS "Anzahl" FROM products;
    /*
    Resultat:
    [
  {
    "Anzahl": 10
  }
]
    */
    
    -- (6) Bilder bei Produkte --
    SELECT DISTINCT picture_url FROM products;
    /*
    Resultat:
    [
  {
    "picture_url": ""
  }
]
    */
    
    -- (7) Anzahl Duplikate bei Produktvariationen --
    SELECT COUNT(*) AS total_duplicates
    FROM (
        SELECT COUNT(name)
        FROM products
        GROUP BY name, haircaire_type, hairtype, quantity_ml
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
    FROM products p
    INNER JOIN (
        SELECT name, haircaire_type, hairtype, quantity_ml
        FROM products
        GROUP BY name, haircaire_type, hairtype, quantity_ml
        HAVING COUNT(*) > 1
    ) as dup
    ON p.name = dup.name AND 
    p.haircaire_type = dup.haircaire_type AND 
    p.hairtype = dup.hairtype AND 
    p.quantity_ml = dup.quantity_ml;;
    /*
    Resultat:
    []
    */
    
