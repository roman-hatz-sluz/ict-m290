
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
    SELECT DISTINCT hauptkategorie_id FROM hauptkategorie;
    /*
    Resultat:
    [
  {
    "hauptkategorie_id": 1
  },
  {
    "hauptkategorie_id": 2
  },
  {
    "hauptkategorie_id": 3
  },
  {
    "hauptkategorie_id": 4
  },
  {
    "hauptkategorie_id": 5
  }
]
    */
    
    -- (3) Produkte ohne passende Hauptkategorie --
    SELECT *
    FROM produkt p
    WHERE p.hauptkategorie_id NOT IN (SELECT bild FROM hauptkategorie)
     ;
    /*
    Resultat:
    [
  {
    "produkt_id": 2,
    "hauptkategorie_id": 1,
    "grösse": "120",
    "lagerbestand": "1",
    "fahrlevel": "Anfänger",
    "preis": 199,
    "segment": "Race",
    "belag": "Hartwachs",
    "namen": "Race Team",
    "bild": null
  },
  {
    "produkt_id": 3,
    "hauptkategorie_id": 2,
    "grösse": "180",
    "lagerbestand": "2",
    "fahrlevel": "Anfänger",
    "preis": 840,
    "segment": "Race",
    "belag": "Sinter",
    "namen": "Nordica Spitfire",
    "bild": null
  },
  {
    "produkt_id": 4,
    "hauptkategorie_id": 2,
    "grösse": "165",
    "lagerbestand": "3",
    "fahrlevel": "Anfänger",
    "preis": 599,
    "segment": "Allrounder",
    "belag": "Strukturiert",
    "namen": "Nordica Enforcer",
    "bild": null
  },
  {
    "produkt_id": 5,
    "hauptkategorie_id": 3,
    "grösse": "177",
    "lagerbestand": "3",
    "fahrlevel": "Fortgeschritten",
    "preis": 759,
    "segment": "On Piste",
    "belag": "Sinter",
    "namen": "Supershape e- Magnum SW",
    "bild": null
  },
  {
    "produkt_id": 6,
    "hauptkategorie_id": 3,
    "grösse": "165",
    "lagerbestand": "3",
    "fahrlevel": "Experte",
    "preis": 799,
    "segment": "Race",
    "belag": "Strukturiert",
    "namen": "EVO 14 Freeflex 14",
    "bild": null
  },
  {
    "produkt_id": 7,
    "hauptkategorie_id": 4,
    "grösse": "175",
    "lagerbestand": "6",
    "fahrlevel": "Experte",
    "preis": 935,
    "segment": "Race",
    "belag": "Universal",
    "namen": "Redster X9 Revoshock",
    "bild": null
  },
  {
    "produkt_id": 8,
    "hauptkategorie_id": 4,
    "grösse": "150",
    "lagerbestand": "10",
    "fahrlevel": "Fortgeschritten",
    "preis": 535,
    "segment": "On Piste",
    "belag": "Sinter",
    "namen": "Cloud C11 Revoshock light",
    "bild": null
  },
  {
    "produkt_id": 9,
    "hauptkategorie_id": 5,
    "grösse": "157",
    "lagerbestand": "56",
    "fahrlevel": "Fortgeschritten",
    "preis": 449,
    "segment": "Allrounder",
    "belag": "Hartwachs",
    "namen": "RC ONE LITE 68",
    "bild": null
  },
  {
    "produkt_id": 10,
    "hauptkategorie_id": 5,
    "grösse": "159",
    "lagerbestand": "20",
    "fahrlevel": "Fortgeschritten",
    "preis": 479,
    "segment": "Allrounder",
    "belag": "Univeral",
    "namen": "RC ONE 78 GT",
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
    
