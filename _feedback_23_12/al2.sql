
  -- al2 --
 
  
    -- (1) Anzahl Hauptkategorien --
    SELECT COUNT(*) AS "Anzahl" FROM drink_type;
    /*
    Resultat:
    [
  {
    "Anzahl": 4
  }
]
    */
    
    -- (2) Bilder bei Hauptkategorien --
    SELECT DISTINCT Image FROM drink_type;
    /*
    Resultat:
    [
  {
    "Image": "https://ibb.co/tbkSsvm"
  },
  {
    "Image": "https://ibb.co/5vCPKNv"
  },
  {
    "Image": "https://ibb.co/Ph6Db2s"
  },
  {
    "Image": "https://ibb.co/cF3g1k7"
  }
]
    */
    
    -- (3) Produkte ohne passende Hauptkategorie --
    SELECT *
    FROM product p
    WHERE p.Drink_type_id NOT IN (SELECT Drink_type_id FROM drink_type)
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
    "Anzahl": 1024
  }
]
    */
    
    -- (5) Anzahl unterschiedliche Produktnamen --
    SELECT COUNT(DISTINCT(Name)) AS "Anzahl" FROM product;
    /*
    Resultat:
    [
  {
    "Anzahl": 347
  }
]
    */
    
    -- (6) Bilder bei Produkte --
    SELECT DISTINCT Image_URL FROM product;
    /*
    Resultat:
    [
  {
    "Image_URL": "https://ibb.co/QFtJZT5"
  },
  {
    "Image_URL": "https://ibb.co/PcMPpLx"
  },
  {
    "Image_URL": "https://ibb.co/R0H7nys"
  },
  {
    "Image_URL": "https://ibb.co/LZLVRFQ"
  },
  {
    "Image_URL": "https://ibb.co/bXFSLCG"
  },
  {
    "Image_URL": "https://ibb.co/phcDWms"
  },
  {
    "Image_URL": "https://ibb.co/ZKhCqhh"
  },
  {
    "Image_URL": "https://ibb.co/PC4sV7v"
  },
  {
    "Image_URL": "https://ibb.co/7znhG4J"
  },
  {
    "Image_URL": "https://ibb.co/vYgzqmt"
  },
  {
    "Image_URL": ""
  }
]
    */
    
    -- (7) Anzahl Duplikate bei Produktvariationen --
    SELECT COUNT(*) AS total_duplicates
    FROM (
        SELECT COUNT(Name)
        FROM product
        GROUP BY Name, Packaging, Is_vegan, Quantity_cl
        HAVING COUNT(*) > 1
    ) AS duplicates;
    /*
    Resultat:
    [
  {
    "total_duplicates": 6
  }
]
    */
    
    -- (8) Duplikate bei Produktvariationen --
    SELECT p.*
    FROM product p
    INNER JOIN (
        SELECT Name, Packaging, Is_vegan, Quantity_cl
        FROM product
        GROUP BY Name, Packaging, Is_vegan, Quantity_cl
        HAVING COUNT(*) > 1
    ) as dup
    ON p.Name = dup.Name AND 
    p.Packaging = dup.Packaging AND 
    p.Is_vegan = dup.Is_vegan AND 
    p.Quantity_cl = dup.Quantity_cl;;
    /*
    Resultat:
    [
  {
    "Product_id": 340,
    "Name": "Gönrgy Odyssey",
    "Price": 280,
    "Image_URL": "",
    "Packaging": "Glass",
    "Is_vegan": 0,
    "Quantity_cl": 33,
    "Drink_type_id": 2
  },
  {
    "Product_id": 318,
    "Name": "Gönrgy Odyssey",
    "Price": 250,
    "Image_URL": "",
    "Packaging": "Glass",
    "Is_vegan": 0,
    "Quantity_cl": 33,
    "Drink_type_id": 4
  },
  {
    "Product_id": 374,
    "Name": "Gönrgy Odyssey",
    "Price": 380,
    "Image_URL": "",
    "Packaging": "Glass",
    "Is_vegan": 0,
    "Quantity_cl": 50,
    "Drink_type_id": 2
  },
  {
    "Product_id": 352,
    "Name": "Gönrgy Odyssey",
    "Price": 350,
    "Image_URL": "",
    "Packaging": "Glass",
    "Is_vegan": 0,
    "Quantity_cl": 50,
    "Drink_type_id": 4
  },
  {
    "Product_id": 408,
    "Name": "Gönrgy Odyssey",
    "Price": 480,
    "Image_URL": "",
    "Packaging": "Plastic",
    "Is_vegan": 0,
    "Quantity_cl": 100,
    "Drink_type_id": 2
  },
  {
    "Product_id": 386,
    "Name": "Gönrgy Odyssey",
    "Price": 450,
    "Image_URL": "",
    "Packaging": "Plastic",
    "Is_vegan": 0,
    "Quantity_cl": 100,
    "Drink_type_id": 4
  },
  {
    "Product_id": 745,
    "Name": "Opalin Radiance",
    "Price": 225,
    "Image_URL": "",
    "Packaging": "Glass",
    "Is_vegan": 0,
    "Quantity_cl": 33,
    "Drink_type_id": 3
  },
  {
    "Product_id": 726,
    "Name": "Opalin Radiance",
    "Price": 250,
    "Image_URL": "",
    "Packaging": "Glass",
    "Is_vegan": 0,
    "Quantity_cl": 33,
    "Drink_type_id": 4
  },
  {
    "Product_id": 779,
    "Name": "Opalin Radiance",
    "Price": 325,
    "Image_URL": "",
    "Packaging": "Glass",
    "Is_vegan": 0,
    "Quantity_cl": 50,
    "Drink_type_id": 3
  },
  {
    "Product_id": 760,
    "Name": "Opalin Radiance",
    "Price": 350,
    "Image_URL": "",
    "Packaging": "Glass",
    "Is_vegan": 0,
    "Quantity_cl": 50,
    "Drink_type_id": 4
  },
  {
    "Product_id": 813,
    "Name": "Opalin Radiance",
    "Price": 425,
    "Image_URL": "",
    "Packaging": "Plastic",
    "Is_vegan": 0,
    "Quantity_cl": 100,
    "Drink_type_id": 3
  },
  {
    "Product_id": 794,
    "Name": "Opalin Radiance",
    "Price": 450,
    "Image_URL": "",
    "Packaging": "Plastic",
    "Is_vegan": 0,
    "Quantity_cl": 100,
    "Drink_type_id": 4
  }
]
    */
    
