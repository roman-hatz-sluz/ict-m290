
  -- b4 --
 
  
    -- (1) Anzahl Hauptkategorien --
    SELECT COUNT(*) AS "Anzahl" FROM hauptkategorie;
    /*
    Resultat:
    [
  {
    "Anzahl": 11
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
    []
    */
    
    -- (4) Anzahl Produkte --
    SELECT COUNT(*) AS "Anzahl" FROM produkt;
    /*
    Resultat:
    [
  {
    "Anzahl": 5335
  }
]
    */
    
    -- (5) Anzahl unterschiedliche Produktnamen --
    SELECT COUNT(DISTINCT(name)) AS "Anzahl" FROM produkt;
    /*
    Resultat:
    [
  {
    "Anzahl": 12
  }
]
    */
    
    -- (6) Bilder bei Produkte --
    SELECT DISTINCT bild FROM produkt;
    /*
    Resultat:
    [
  {
    "bild": ""
  }
]
    */
    
    -- (7) Anzahl Duplikate bei Produktvariationen --
    SELECT COUNT(*) AS total_duplicates
    FROM (
        SELECT COUNT(name)
        FROM produkt
        GROUP BY name, autor, altersempfehlung, seitenzahl
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
    FROM produkt p
    INNER JOIN (
        SELECT name, autor, altersempfehlung, seitenzahl
        FROM produkt
        GROUP BY name, autor, altersempfehlung, seitenzahl
        HAVING COUNT(*) > 1
    ) as dup
    ON p.name = dup.name AND 
    p.autor = dup.autor AND 
    p.altersempfehlung = dup.altersempfehlung AND 
    p.seitenzahl = dup.seitenzahl;;
    /*
    Resultat:
    [
  {
    "produkt_id": 13,
    "name": "Herr der Ringe",
    "seitenzahl": 608,
    "altersempfehlung": 16,
    "lagerbestand": 10,
    "autor": "John Ronald Reuel Tolkien",
    "preis": 13,
    "bild": "",
    "hauptkategorie_id": 1
  },
  {
    "produkt_id": 1,
    "name": "Herr der Ringe",
    "seitenzahl": 608,
    "altersempfehlung": 16,
    "lagerbestand": 10,
    "autor": "John Ronald Reuel Tolkien",
    "preis": 13,
    "bild": "",
    "hauptkategorie_id": 1
  },
  {
    "produkt_id": 546,
    "name": "Harry Potter",
    "seitenzahl": 448,
    "altersempfehlung": 12,
    "lagerbestand": 10,
    "autor": "J.K. Rowling",
    "preis": 16,
    "bild": "",
    "hauptkategorie_id": 2
  },
  {
    "produkt_id": 2,
    "name": "Harry Potter",
    "seitenzahl": 448,
    "altersempfehlung": 12,
    "lagerbestand": 10,
    "autor": "J.K. Rowling",
    "preis": 16,
    "bild": "",
    "hauptkategorie_id": 2
  },
  {
    "produkt_id": 1077,
    "name": "Sherlock Holmes",
    "seitenzahl": 340,
    "altersempfehlung": 16,
    "lagerbestand": 10,
    "autor": "Sir Arthur Ignatius Conan Doyle",
    "preis": 30,
    "bild": "",
    "hauptkategorie_id": 3
  },
  {
    "produkt_id": 3,
    "name": "Sherlock Holmes",
    "seitenzahl": 340,
    "altersempfehlung": 16,
    "lagerbestand": 10,
    "autor": "Sir Arthur Ignatius Conan Doyle",
    "preis": 30,
    "bild": "",
    "hauptkategorie_id": 3
  },
  {
    "produkt_id": 5,
    "name": "Der Junge im gestreiften Pyjama",
    "seitenzahl": 289,
    "altersempfehlung": 12,
    "lagerbestand": 10,
    "autor": "John Boyne",
    "preis": 15,
    "bild": "",
    "hauptkategorie_id": 5
  },
  {
    "produkt_id": 6,
    "name": "Romeo und Julia",
    "seitenzahl": 171,
    "altersempfehlung": 12,
    "lagerbestand": 10,
    "autor": "William Shakespeare",
    "preis": 10,
    "bild": "",
    "hauptkategorie_id": 6
  },
  {
    "produkt_id": 7,
    "name": "Der kleine Prinz",
    "seitenzahl": 96,
    "altersempfehlung": 6,
    "lagerbestand": 10,
    "autor": "Antoine de Saint-Exupéry",
    "preis": 14,
    "bild": "",
    "hauptkategorie_id": 7
  },
  {
    "produkt_id": 8,
    "name": "Asterix und Obelix",
    "seitenzahl": 48,
    "altersempfehlung": 12,
    "lagerbestand": 10,
    "autor": "René Goscinny",
    "preis": 16,
    "bild": "",
    "hauptkategorie_id": 8
  },
  {
    "produkt_id": 10,
    "name": "Becoming - Meine Geschichte",
    "seitenzahl": 544,
    "altersempfehlung": 16,
    "lagerbestand": 10,
    "autor": "Michelle Obama",
    "preis": 37,
    "bild": "",
    "hauptkategorie_id": 10
  },
  {
    "produkt_id": 11,
    "name": "Pipi Langstrumpf",
    "seitenzahl": 144,
    "altersempfehlung": 6,
    "lagerbestand": 10,
    "autor": "Astrid Lindgren",
    "preis": 24,
    "bild": "",
    "hauptkategorie_id": 11
  },
  {
    "produkt_id": 3207,
    "name": "Der kleine Prinz",
    "seitenzahl": 96,
    "altersempfehlung": 6,
    "lagerbestand": 10,
    "autor": "Antoine de Saint-Exupéry",
    "preis": 14,
    "bild": "",
    "hauptkategorie_id": 7
  },
  {
    "produkt_id": 3738,
    "name": "Asterix und Obelix",
    "seitenzahl": 48,
    "altersempfehlung": 12,
    "lagerbestand": 10,
    "autor": "René Goscinny",
    "preis": 16,
    "bild": "",
    "hauptkategorie_id": 8
  },
  {
    "produkt_id": 4801,
    "name": "Becoming - Meine Geschichte",
    "seitenzahl": 544,
    "altersempfehlung": 16,
    "lagerbestand": 10,
    "autor": "Michelle Obama",
    "preis": 37,
    "bild": "",
    "hauptkategorie_id": 10
  },
  {
    "produkt_id": 2142,
    "name": "Der Junge im gestreiften Pyjama",
    "seitenzahl": 289,
    "altersempfehlung": 12,
    "lagerbestand": 10,
    "autor": "John Boyne",
    "preis": 15,
    "bild": "",
    "hauptkategorie_id": 5
  },
  {
    "produkt_id": 2674,
    "name": "Romeo und Julia",
    "seitenzahl": 171,
    "altersempfehlung": 12,
    "lagerbestand": 10,
    "autor": "William Shakespeare",
    "preis": 10,
    "bild": "",
    "hauptkategorie_id": 6
  },
  {
    "produkt_id": 5335,
    "name": "Pipi Langstrumpf",
    "seitenzahl": 144,
    "altersempfehlung": 6,
    "lagerbestand": 10,
    "autor": "Astrid Lindgren",
    "preis": 24,
    "bild": "",
    "hauptkategorie_id": 11
  }
]
    */
    
