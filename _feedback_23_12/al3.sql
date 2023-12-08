
  -- al3 --
 
  
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
    SELECT DISTINCT hauptkategorie_picture FROM hauptkategorie;
    /*
    Resultat:
    [
  {
    "hauptkategorie_picture": ""
  }
]
    */
    
    -- (3) Produkte ohne passende Hauptkategorie --
    SELECT *
    FROM produkte p
    WHERE p.hauptkategorie_id NOT IN (SELECT hauptkategorie_id FROM hauptkategorie)
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
    "Anzahl": 15
  }
]
    */
    
    -- (5) Anzahl unterschiedliche Produktnamen --
    SELECT COUNT(DISTINCT(name)) AS "Anzahl" FROM produkte;
    /*
    Resultat:
    [
  {
    "Anzahl": 15
  }
]
    */
    
    -- (6) Bilder bei Produkte --
    SELECT DISTINCT produkt_bild FROM produkte;
    /*
    Resultat:
    [
  {
    "produkt_bild": "https://www.dropbox.com/scl/fi/17h6i7czk0a7s3798wzld/Harley-Benton-SC-550Plus-EMG-FTF.jpg?rlkey=n8ul1kgrrke74poyl3dxqwlfw&dl=0"
  },
  {
    "produkt_bild": "https://www.dropbox.com/scl/fi/5n07b4vkcrlbxmoedyej5/Yamaha-C40-BL.jpg?rlkey=7qjd08g05r7t8p31gnwsh8xsx&dl=0"
  },
  {
    "produkt_bild": "https://www.dropbox.com/scl/fi/78oy93upvn9gdb1j6gfb2/Ibanez-BTB846-CBL.jpg?rlkey=bzvwbjt867v9svap2lqbtqzqq&dl=0"
  },
  {
    "produkt_bild": "https://www.dropbox.com/scl/fi/z80unmkacsyujw0w96es6/Gretsch-G9126-ACE-Guitar-Ukulele.jpg?rlkey=q7vm2tzr6q1kdavmwi6yqra4x&dl=0"
  },
  {
    "produkt_bild": "https://www.dropbox.com/scl/fi/px70n2qs79ar689hmxhj9/Squier-Affinity-Strat-Laurel-SG.jpg?rlkey=f6fjwbqu9gyw75d2adgqki0u0&dl=0"
  },
  {
    "produkt_bild": "https://www.dropbox.com/scl/fi/n9yt1vkjn3rly3v7ofh11/Gibson-Les-Paul-Standard-60s-BB.jpg?rlkey=trdodt45q4vyfdb0jxl7uf3ka&dl=0"
  },
  {
    "produkt_bild": "https://www.dropbox.com/scl/fi/qusi0zpbke67fsgr36yw8/Harley-Benton-GL-2NT-Guitarlele-Bundle.jpg?rlkey=x3rmff745loyurtyd5lfnwoqu&dl=0"
  },
  {
    "produkt_bild": "https://www.dropbox.com/scl/fi/1ooy1t7wbkhaoctaavc4j/Startone-CG851-1-4-Akustikgitarre.jpg?rlkey=mduqtnnp6ilwtyr7vurpsnh1z&dl=0"
  },
  {
    "produkt_bild": "https://www.dropbox.com/scl/fi/vquz4j9vt6rnt9awnp5wn/Harley-Benton-PB-Shorty-BK-E-Bass.jpg?rlkey=p0wo55ql6fvjb85ukqofpskmh&dl=0"
  },
  {
    "produkt_bild": "https://www.dropbox.com/scl/fi/5ovephynlhst04os1ji33/Squier-CV-Bass-VI-LRL-3TS.jpg?rlkey=50zv5j48vcnck2abvjvsgqebn&dl=0"
  },
  {
    "produkt_bild": "https://www.dropbox.com/scl/fi/k50ne6yauxlvglv5owhbb/Harley-Benton-BZ-6000-II-NT.jpg?rlkey=l5gtv9vfwvi1ovbo0i7aszs70&dl=0"
  },
  {
    "produkt_bild": "https://www.dropbox.com/scl/fi/t1h8uszljnt1g1hmw5x7a/Cascha-Premium-Mahagoni-Sopran-Bundle-German.jpg?rlkey=8heyvs788hx21h5zaex6yyyp5&dl=0"
  },
  {
    "produkt_bild": "https://www.dropbox.com/scl/fi/95re8bcgbgthgwpexc0rw/Baton-Rouge-UTC-T-Cherry.jpg?rlkey=rcxfek1murh6mdel0k1h8g3dw&dl=0"
  },
  {
    "produkt_bild": "https://www.dropbox.com/scl/fi/atnqz43u3q27e0e2yi7wx/Kala-KA-B-Satin-Mahogany-Bariton.jpg?rlkey=oo99tmhefm8n9w3wmi926n649&dl=0"
  },
  {
    "produkt_bild": "https://www.dropbox.com/scl/fi/np8w6atqn9wmjr1da3atr/Harley-Benton-HBD120CEBK-Westerngitarre.jpg?rlkey=uh8fvk0hvuo0kaiwzut39mjze&dl=0"
  }
]
    */
    
    -- (7) Anzahl Duplikate bei Produktvariationen --
    SELECT COUNT(*) AS total_duplicates
    FROM (
        SELECT COUNT(name)
        FROM produkte
        GROUP BY name, saitenpaket, neck, farbe
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
        SELECT name, saitenpaket, neck, farbe
        FROM produkte
        GROUP BY name, saitenpaket, neck, farbe
        HAVING COUNT(*) > 1
    ) as dup
    ON p.name = dup.name AND 
    p.saitenpaket = dup.saitenpaket AND 
    p.neck = dup.neck AND 
    p.farbe = dup.farbe;;
    /*
    Resultat:
    []
    */
    
