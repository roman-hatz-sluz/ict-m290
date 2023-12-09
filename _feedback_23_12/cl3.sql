
  -- cl3 --
 
  
    -- (1) Anzahl Hauptkategorien --
    SELECT COUNT(*) AS "Anzahl" FROM hauptkategorie;
    /*
    Resultat:
    [
  {
    "Anzahl": 4
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
    "Anzahl": 1125
  }
]
    */
    
    -- (5) Anzahl unterschiedliche Produktnamen --
    SELECT COUNT(DISTINCT(produktname)) AS "Anzahl" FROM produkt;
    /*
    Resultat:
    [
  {
    "Anzahl": 15
  }
]
    */
    
    -- (6) Bilder bei Produkte --
    SELECT DISTINCT produktname FROM produkt;
    /*
    Resultat:
    [
  {
    "produktname": "Audi A1 Sportback"
  },
  {
    "produktname": "Q8 e-tron"
  },
  {
    "produktname": "Audi A3 Sportback"
  },
  {
    "produktname": "Q2"
  },
  {
    "produktname": "Audi A4 Avant"
  },
  {
    "produktname": "Audi A5 Sportback"
  },
  {
    "produktname": "Q3"
  },
  {
    "produktname": "Audi A6 Avant"
  },
  {
    "produktname": "Audi A7 Sportback"
  },
  {
    "produktname": "Q5"
  },
  {
    "produktname": "Q7"
  },
  {
    "produktname": "Audi A8 "
  },
  {
    "produktname": "e-tror e-tron GT quattro"
  },
  {
    "produktname": "Q8 SUV"
  },
  {
    "produktname": "Q8 e-tron "
  }
]
    */
    
    -- (7) Anzahl Duplikate bei Produktvariationen --
    SELECT COUNT(*) AS total_duplicates
    FROM (
        SELECT COUNT(produktname)
        FROM produkt
        GROUP BY produktname, farbe, felgen_in_zoll, innenausstattung
        HAVING COUNT(*) > 1
    ) AS duplicates;
    /*
    Resultat:
    [
  {
    "total_duplicates": 66
  }
]
    */
    
    -- (8) Duplikate bei Produktvariationen --
    SELECT p.*
    FROM produkt p
    INNER JOIN (
        SELECT produktname, farbe, felgen_in_zoll, innenausstattung
        FROM produkt
        GROUP BY produktname, farbe, felgen_in_zoll, innenausstattung
        HAVING COUNT(*) > 1
    ) as dup
    ON p.produktname = dup.produktname AND 
    p.farbe = dup.farbe AND 
    p.felgen_in_zoll = dup.felgen_in_zoll AND 
    p.innenausstattung = dup.innenausstattung;;
    /*
    Resultat:
    [
  {
    "produkte_id": 40,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "18 Zoll",
    "preis": 36030,
    "produktname": "Audi A1 Sportback",
    "innenausstattung": "Mikrofaser Dinamica Frequenz",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 16,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "18 Zoll",
    "preis": 36030,
    "produktname": "Audi A1 Sportback",
    "innenausstattung": "Mikrofaser Dinamica Frequenz",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 1,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "18 Zoll",
    "preis": 36030,
    "produktname": "Audi A1 Sportback",
    "innenausstattung": "Mikrofaser Dinamica Frequenz",
    "hauptkategorie_id": 2
  },
  {
    "produkte_id": 17,
    "farbe": "Ibissweiss",
    "felgen_in_zoll": "16 Zoll",
    "preis": 41660,
    "produktname": "Audi A3 Sportback",
    "innenausstattung": "Stoff Puls",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 3,
    "farbe": "Ibissweiss",
    "felgen_in_zoll": "16 Zoll",
    "preis": 41660,
    "produktname": "Audi A3 Sportback",
    "innenausstattung": "Stoff Puls",
    "hauptkategorie_id": 2
  },
  {
    "produkte_id": 25,
    "farbe": "Nardograu Uni",
    "felgen_in_zoll": "17 Zoll",
    "preis": 48860,
    "produktname": "Q2",
    "innenausstattung": "Stoff Skript",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 4,
    "farbe": "Nardograu Uni",
    "felgen_in_zoll": "17 Zoll",
    "preis": 48860,
    "produktname": "Q2",
    "innenausstattung": "Stoff Skript",
    "hauptkategorie_id": 4
  },
  {
    "produkte_id": 18,
    "farbe": "Distriktgrün",
    "felgen_in_zoll": "17 Zoll",
    "preis": 54400,
    "produktname": "Audi A4 Avant",
    "innenausstattung": "Mikrofaser Dinamica ",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 5,
    "farbe": "Distriktgrün",
    "felgen_in_zoll": "17 Zoll",
    "preis": 54400,
    "produktname": "Audi A4 Avant",
    "innenausstattung": "Mikrofaser Dinamica ",
    "hauptkategorie_id": 3
  },
  {
    "produkte_id": 19,
    "farbe": "Brillantschwarz",
    "felgen_in_zoll": "19 Zoll",
    "preis": 56320,
    "produktname": "Audi A5 Sportback",
    "innenausstattung": "Stoff Sequenz",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 6,
    "farbe": "Brillantschwarz",
    "felgen_in_zoll": "19 Zoll",
    "preis": 56320,
    "produktname": "Audi A5 Sportback",
    "innenausstattung": "Stoff Sequenz",
    "hauptkategorie_id": 3
  },
  {
    "produkte_id": 20,
    "farbe": "Chronosgrau Metallic",
    "felgen_in_zoll": "16 Zoll",
    "preis": 84440,
    "produktname": "Audi A6 Avant",
    "innenausstattung": "Leder Valcona",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 8,
    "farbe": "Chronosgrau Metallic",
    "felgen_in_zoll": "16 Zoll",
    "preis": 84440,
    "produktname": "Audi A6 Avant",
    "innenausstattung": "Leder Valcona",
    "hauptkategorie_id": 3
  },
  {
    "produkte_id": 21,
    "farbe": "Madeirabraun Metallic",
    "felgen_in_zoll": "21 Zoll",
    "preis": 79850,
    "produktname": "Audi A7 Sportback",
    "innenausstattung": "Leder ",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 9,
    "farbe": "Madeirabraun Metallic",
    "felgen_in_zoll": "21 Zoll",
    "preis": 79850,
    "produktname": "Audi A7 Sportback",
    "innenausstattung": "Leder ",
    "hauptkategorie_id": 3
  },
  {
    "produkte_id": 459,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "20 Zoll",
    "preis": 61520,
    "produktname": "Q5",
    "innenausstattung": "Mikrofaser Dinamica Frequenz",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 27,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "20 Zoll",
    "preis": 61520,
    "produktname": "Q5",
    "innenausstattung": "Mikrofaser Dinamica Frequenz",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 10,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "20 Zoll",
    "preis": 61520,
    "produktname": "Q5",
    "innenausstattung": "Mikrofaser Dinamica Frequenz",
    "hauptkategorie_id": 4
  },
  {
    "produkte_id": 22,
    "farbe": "Merlin Perleffekt",
    "felgen_in_zoll": "20 Zoll",
    "preis": 121700,
    "produktname": "Audi A8 ",
    "innenausstattung": "Leder Valetta",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 12,
    "farbe": "Merlin Perleffekt",
    "felgen_in_zoll": "20 Zoll",
    "preis": 121700,
    "produktname": "Audi A8 ",
    "innenausstattung": "Leder Valetta",
    "hauptkategorie_id": 3
  },
  {
    "produkte_id": 23,
    "farbe": "Havannaschwarz Metallic",
    "felgen_in_zoll": "19 Zoll",
    "preis": 112920,
    "produktname": "e-tror e-tron GT quattro",
    "innenausstattung": "Stoff Kaskade",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 13,
    "farbe": "Havannaschwarz Metallic",
    "felgen_in_zoll": "19 Zoll",
    "preis": 112920,
    "produktname": "e-tror e-tron GT quattro",
    "innenausstattung": "Stoff Kaskade",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 29,
    "farbe": "Sakhirgold Metallic",
    "felgen_in_zoll": "23 Zoll",
    "preis": 96300,
    "produktname": "Q8 SUV",
    "innenausstattung": "Leder Cricket",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 14,
    "farbe": "Sakhirgold Metallic",
    "felgen_in_zoll": "23 Zoll",
    "preis": 96300,
    "produktname": "Q8 SUV",
    "innenausstattung": "Leder Cricket",
    "hauptkategorie_id": 4
  },
  {
    "produkte_id": 30,
    "farbe": "Ibissweiss",
    "felgen_in_zoll": "18 Zoll",
    "preis": 36030,
    "produktname": "Audi A1 Sportback",
    "innenausstattung": "Mikrofaser Dinamica Frequenz",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 15,
    "farbe": "Ibissweiss",
    "felgen_in_zoll": "18 Zoll",
    "preis": 36030,
    "produktname": "Audi A1 Sportback",
    "innenausstattung": "Mikrofaser Dinamica Frequenz",
    "hauptkategorie_id": 2
  },
  {
    "produkte_id": 79,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "16 Zoll",
    "preis": 41660,
    "produktname": "Audi A3 Sportback",
    "innenausstattung": "Stoff Puls",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 69,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "16 Zoll",
    "preis": 41660,
    "produktname": "Audi A3 Sportback",
    "innenausstattung": "Stoff Puls",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 92,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "17 Zoll",
    "preis": 41660,
    "produktname": "Audi A3 Sportback",
    "innenausstattung": "Stoff Puls",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 82,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "17 Zoll",
    "preis": 41660,
    "produktname": "Audi A3 Sportback",
    "innenausstattung": "Stoff Puls",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 105,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "18 Zoll",
    "preis": 41660,
    "produktname": "Audi A3 Sportback",
    "innenausstattung": "Stoff Puls",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 95,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "18 Zoll",
    "preis": 41660,
    "produktname": "Audi A3 Sportback",
    "innenausstattung": "Stoff Puls",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 118,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "17 Zoll",
    "preis": 54400,
    "produktname": "Audi A4 Avant",
    "innenausstattung": "Mikrofaser Dinamica ",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 108,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "17 Zoll",
    "preis": 54400,
    "produktname": "Audi A4 Avant",
    "innenausstattung": "Mikrofaser Dinamica ",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 131,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "18 Zoll",
    "preis": 54400,
    "produktname": "Audi A4 Avant",
    "innenausstattung": "Mikrofaser Dinamica ",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 121,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "18 Zoll",
    "preis": 54400,
    "produktname": "Audi A4 Avant",
    "innenausstattung": "Mikrofaser Dinamica ",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 144,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "19 Zoll",
    "preis": 54400,
    "produktname": "Audi A4 Avant",
    "innenausstattung": "Mikrofaser Dinamica ",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 134,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "19 Zoll",
    "preis": 54400,
    "produktname": "Audi A4 Avant",
    "innenausstattung": "Mikrofaser Dinamica ",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 157,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "19 Zoll",
    "preis": 56320,
    "produktname": "Audi A5 Sportback",
    "innenausstattung": "Stoff Sequenz",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 147,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "19 Zoll",
    "preis": 56320,
    "produktname": "Audi A5 Sportback",
    "innenausstattung": "Stoff Sequenz",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 173,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "17 Zoll",
    "preis": 56320,
    "produktname": "Audi A5 Sportback",
    "innenausstattung": "Stoff Sequenz",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 170,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "17 Zoll",
    "preis": 56320,
    "produktname": "Audi A5 Sportback",
    "innenausstattung": "Stoff Sequenz",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 199,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "17 Zoll",
    "preis": 84440,
    "produktname": "Audi A6 Avant",
    "innenausstattung": "Leder Valcona",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 196,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "17 Zoll",
    "preis": 84440,
    "produktname": "Audi A6 Avant",
    "innenausstattung": "Leder Valcona",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 212,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "18 Zoll",
    "preis": 84440,
    "produktname": "Audi A6 Avant",
    "innenausstattung": "Leder Valcona",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 209,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "18 Zoll",
    "preis": 84440,
    "produktname": "Audi A6 Avant",
    "innenausstattung": "Leder Valcona",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 238,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "20 Zoll",
    "preis": 79850,
    "produktname": "Audi A7 Sportback",
    "innenausstattung": "Leder ",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 235,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "20 Zoll",
    "preis": 79850,
    "produktname": "Audi A7 Sportback",
    "innenausstattung": "Leder ",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 251,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "19 Zoll",
    "preis": 79850,
    "produktname": "Audi A7 Sportback",
    "innenausstattung": "Leder ",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 248,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "19 Zoll",
    "preis": 79850,
    "produktname": "Audi A7 Sportback",
    "innenausstattung": "Leder ",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 277,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "21 Zoll",
    "preis": 121700,
    "produktname": "Audi A8 ",
    "innenausstattung": "Leder Valetta",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 274,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "21 Zoll",
    "preis": 121700,
    "produktname": "Audi A8 ",
    "innenausstattung": "Leder Valetta",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 290,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "22 Zoll",
    "preis": 121700,
    "produktname": "Audi A8 ",
    "innenausstattung": "Leder Valetta",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 287,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "22 Zoll",
    "preis": 121700,
    "produktname": "Audi A8 ",
    "innenausstattung": "Leder Valetta",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 316,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "18 Zoll",
    "preis": 112920,
    "produktname": "e-tror e-tron GT quattro",
    "innenausstattung": "Stoff Kaskade",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 313,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "18 Zoll",
    "preis": 112920,
    "produktname": "e-tror e-tron GT quattro",
    "innenausstattung": "Stoff Kaskade",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 329,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "17 Zoll",
    "preis": 112920,
    "produktname": "e-tror e-tron GT quattro",
    "innenausstattung": "Stoff Kaskade",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 326,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "17 Zoll",
    "preis": 112920,
    "produktname": "e-tror e-tron GT quattro",
    "innenausstattung": "Stoff Kaskade",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 355,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "21 Zoll",
    "preis": 87970,
    "produktname": "Q8 e-tron ",
    "innenausstattung": "Leder Valcona",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 352,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "21 Zoll",
    "preis": 87970,
    "produktname": "Q8 e-tron ",
    "innenausstattung": "Leder Valcona",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 368,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "20 Zoll",
    "preis": 87970,
    "produktname": "Q8 e-tron ",
    "innenausstattung": "Leder Valcona",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 365,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "20 Zoll",
    "preis": 87970,
    "produktname": "Q8 e-tron ",
    "innenausstattung": "Leder Valcona",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 394,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "18 Zoll",
    "preis": 48860,
    "produktname": "Q2",
    "innenausstattung": "Stoff Skript",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 391,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "18 Zoll",
    "preis": 48860,
    "produktname": "Q2",
    "innenausstattung": "Stoff Skript",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 407,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "19 Zoll",
    "preis": 48860,
    "produktname": "Q2",
    "innenausstattung": "Stoff Skript",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 404,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "19 Zoll",
    "preis": 48860,
    "produktname": "Q2",
    "innenausstattung": "Stoff Skript",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 430,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "18 Zoll",
    "preis": 49800,
    "produktname": "Q3",
    "innenausstattung": "Mikrofaser Dinamica ",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 420,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "18 Zoll",
    "preis": 49800,
    "produktname": "Q3",
    "innenausstattung": "Mikrofaser Dinamica ",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 446,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "20 Zoll",
    "preis": 49800,
    "produktname": "Q3",
    "innenausstattung": "Mikrofaser Dinamica ",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 443,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "20 Zoll",
    "preis": 49800,
    "produktname": "Q3",
    "innenausstattung": "Mikrofaser Dinamica ",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 511,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "21 Zoll",
    "preis": 85100,
    "produktname": "Q7",
    "innenausstattung": "Leder Valcona",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 509,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "21 Zoll",
    "preis": 85100,
    "produktname": "Q7",
    "innenausstattung": "Leder Valcona",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 524,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "20 Zoll",
    "preis": 85100,
    "produktname": "Q7",
    "innenausstattung": "Leder Valcona",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 522,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "20 Zoll",
    "preis": 85100,
    "produktname": "Q7",
    "innenausstattung": "Leder Valcona",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 537,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "19 Zoll",
    "preis": 85100,
    "produktname": "Q7",
    "innenausstattung": "Leder Valcona",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 535,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "19 Zoll",
    "preis": 85100,
    "produktname": "Q7",
    "innenausstattung": "Leder Valcona",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 552,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "22 Zoll",
    "preis": 96300,
    "produktname": "Q8 SUV",
    "innenausstattung": "Leder Cricket",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 550,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "22 Zoll",
    "preis": 96300,
    "produktname": "Q8 SUV",
    "innenausstattung": "Leder Cricket",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 565,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "21 Zoll",
    "preis": 96300,
    "produktname": "Q8 SUV",
    "innenausstattung": "Leder Cricket",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 563,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "21 Zoll",
    "preis": 96300,
    "produktname": "Q8 SUV",
    "innenausstattung": "Leder Cricket",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 627,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "16 Zoll",
    "preis": 41660,
    "produktname": "Audi A3 Sportback",
    "innenausstattung": "Stoff Skript",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 617,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "16 Zoll",
    "preis": 41660,
    "produktname": "Audi A3 Sportback",
    "innenausstattung": "Stoff Skript",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 640,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "17 Zoll",
    "preis": 41660,
    "produktname": "Audi A3 Sportback",
    "innenausstattung": "Stoff Skript",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 630,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "17 Zoll",
    "preis": 41660,
    "produktname": "Audi A3 Sportback",
    "innenausstattung": "Stoff Skript",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 653,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "18 Zoll",
    "preis": 41660,
    "produktname": "Audi A3 Sportback",
    "innenausstattung": "Stoff Skript",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 643,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "18 Zoll",
    "preis": 41660,
    "produktname": "Audi A3 Sportback",
    "innenausstattung": "Stoff Skript",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 666,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "17 Zoll",
    "preis": 54400,
    "produktname": "Audi A4 Avant",
    "innenausstattung": "Leder Valcona",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 656,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "17 Zoll",
    "preis": 54400,
    "produktname": "Audi A4 Avant",
    "innenausstattung": "Leder Valcona",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 679,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "18 Zoll",
    "preis": 54400,
    "produktname": "Audi A4 Avant",
    "innenausstattung": "Leder Valcona",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 669,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "18 Zoll",
    "preis": 54400,
    "produktname": "Audi A4 Avant",
    "innenausstattung": "Leder Valcona",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 692,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "19 Zoll",
    "preis": 54400,
    "produktname": "Audi A4 Avant",
    "innenausstattung": "Leder Valcona",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 682,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "19 Zoll",
    "preis": 54400,
    "produktname": "Audi A4 Avant",
    "innenausstattung": "Leder Valcona",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 705,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "19 Zoll",
    "preis": 56320,
    "produktname": "Audi A5 Sportback",
    "innenausstattung": "Stoff Kaskade",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 695,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "19 Zoll",
    "preis": 56320,
    "produktname": "Audi A5 Sportback",
    "innenausstattung": "Stoff Kaskade",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 721,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "17 Zoll",
    "preis": 56320,
    "produktname": "Audi A5 Sportback",
    "innenausstattung": "Stoff Kaskade",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 718,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "17 Zoll",
    "preis": 56320,
    "produktname": "Audi A5 Sportback",
    "innenausstattung": "Stoff Kaskade",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 747,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "17 Zoll",
    "preis": 84440,
    "produktname": "Audi A6 Avant",
    "innenausstattung": "Mikrofaser Dinamica",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 744,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "17 Zoll",
    "preis": 84440,
    "produktname": "Audi A6 Avant",
    "innenausstattung": "Mikrofaser Dinamica",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 760,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "18 Zoll",
    "preis": 84440,
    "produktname": "Audi A6 Avant",
    "innenausstattung": "Mikrofaser Dinamica",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 757,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "18 Zoll",
    "preis": 84440,
    "produktname": "Audi A6 Avant",
    "innenausstattung": "Mikrofaser Dinamica",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 786,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "20 Zoll",
    "preis": 79850,
    "produktname": "Audi A7 Sportback",
    "innenausstattung": "Stoff Sequenz",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 783,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "20 Zoll",
    "preis": 79850,
    "produktname": "Audi A7 Sportback",
    "innenausstattung": "Stoff Sequenz",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 799,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "19 Zoll",
    "preis": 79850,
    "produktname": "Audi A7 Sportback",
    "innenausstattung": "Stoff Sequenz",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 796,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "19 Zoll",
    "preis": 79850,
    "produktname": "Audi A7 Sportback",
    "innenausstattung": "Stoff Sequenz",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 825,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "21 Zoll",
    "preis": 121700,
    "produktname": "Audi A8 ",
    "innenausstattung": "Leder Cricket",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 822,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "21 Zoll",
    "preis": 121700,
    "produktname": "Audi A8 ",
    "innenausstattung": "Leder Cricket",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 838,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "22 Zoll",
    "preis": 121700,
    "produktname": "Audi A8 ",
    "innenausstattung": "Leder Cricket",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 835,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "22 Zoll",
    "preis": 121700,
    "produktname": "Audi A8 ",
    "innenausstattung": "Leder Cricket",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 864,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "18 Zoll",
    "preis": 112920,
    "produktname": "e-tror e-tron GT quattro",
    "innenausstattung": "Leder Valetta",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 861,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "18 Zoll",
    "preis": 112920,
    "produktname": "e-tror e-tron GT quattro",
    "innenausstattung": "Leder Valetta",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 877,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "17 Zoll",
    "preis": 112920,
    "produktname": "e-tror e-tron GT quattro",
    "innenausstattung": "Leder Valetta",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 874,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "17 Zoll",
    "preis": 112920,
    "produktname": "e-tror e-tron GT quattro",
    "innenausstattung": "Leder Valetta",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 903,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "21 Zoll",
    "preis": 87970,
    "produktname": "Q8 e-tron ",
    "innenausstattung": "Leder",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 900,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "21 Zoll",
    "preis": 87970,
    "produktname": "Q8 e-tron ",
    "innenausstattung": "Leder",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 916,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "20 Zoll",
    "preis": 87970,
    "produktname": "Q8 e-tron ",
    "innenausstattung": "Leder",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 913,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "20 Zoll",
    "preis": 87970,
    "produktname": "Q8 e-tron ",
    "innenausstattung": "Leder",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 942,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "18 Zoll",
    "preis": 48860,
    "produktname": "Q2",
    "innenausstattung": "Mikrofaser Dinamica Frequenz",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 939,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "18 Zoll",
    "preis": 48860,
    "produktname": "Q2",
    "innenausstattung": "Mikrofaser Dinamica Frequenz",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 955,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "19 Zoll",
    "preis": 48860,
    "produktname": "Q2",
    "innenausstattung": "Mikrofaser Dinamica Frequenz",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 952,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "19 Zoll",
    "preis": 48860,
    "produktname": "Q2",
    "innenausstattung": "Mikrofaser Dinamica Frequenz",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 978,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "18 Zoll",
    "preis": 49800,
    "produktname": "Q3",
    "innenausstattung": "Leder Valcona",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 968,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "18 Zoll",
    "preis": 49800,
    "produktname": "Q3",
    "innenausstattung": "Leder Valcona",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 994,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "20 Zoll",
    "preis": 49800,
    "produktname": "Q3",
    "innenausstattung": "Leder Valcona",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 991,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "20 Zoll",
    "preis": 49800,
    "produktname": "Q3",
    "innenausstattung": "Leder Valcona",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 1059,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "21 Zoll",
    "preis": 85100,
    "produktname": "Q7",
    "innenausstattung": "Leder Cricket",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 1057,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "21 Zoll",
    "preis": 85100,
    "produktname": "Q7",
    "innenausstattung": "Leder Cricket",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 1072,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "20 Zoll",
    "preis": 85100,
    "produktname": "Q7",
    "innenausstattung": "Leder Cricket",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 1070,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "20 Zoll",
    "preis": 85100,
    "produktname": "Q7",
    "innenausstattung": "Leder Cricket",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 1085,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "19 Zoll",
    "preis": 85100,
    "produktname": "Q7",
    "innenausstattung": "Leder Cricket",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 1083,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "19 Zoll",
    "preis": 85100,
    "produktname": "Q7",
    "innenausstattung": "Leder Cricket",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 1100,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "22 Zoll",
    "preis": 96300,
    "produktname": "Q8 SUV",
    "innenausstattung": "Stoff Sequenz",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 1098,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "22 Zoll",
    "preis": 96300,
    "produktname": "Q8 SUV",
    "innenausstattung": "Stoff Sequenz",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 1113,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "21 Zoll",
    "preis": 96300,
    "produktname": "Q8 SUV",
    "innenausstattung": "Stoff Sequenz",
    "hauptkategorie_id": 1
  },
  {
    "produkte_id": 1111,
    "farbe": "Navarrablau Metallic",
    "felgen_in_zoll": "21 Zoll",
    "preis": 96300,
    "produktname": "Q8 SUV",
    "innenausstattung": "Stoff Sequenz",
    "hauptkategorie_id": 1
  }
]
    */
    
