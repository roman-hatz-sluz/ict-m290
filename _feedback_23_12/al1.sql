
  -- al1 --
 
  
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
    "bild": "https://www.dropbox.com/scl/fi/i45y8iu7hnfggwgmnsrpf/oberteile.jpg?rlkey=unhnmwtv36mqhic0ix89k8nhc&dl=0"
  },
  {
    "bild": "https://www.dropbox.com/scl/fi/77crjwb4k0x1lfrbclgd9/unterteile.jpg?rlkey=0lcy7ldgaigxn8iqhsjzf9stg&dl=0"
  },
  {
    "bild": "https://www.dropbox.com/scl/fi/wy2da4h9fyhb7c9pj44fx/accesoires.jpg?rlkey=8wvznahw9bgebpejrswiqxfyh&dl=0"
  },
  {
    "bild": "https://www.dropbox.com/scl/fi/3gtav4am2vt2sfhlk7qzc/schuhe.jpg?rlkey=xdilfh0wiaqunthoo4s9yywce&dl=0"
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
    "Anzahl": 1045
  }
]
    */
    
    -- (5) Anzahl unterschiedliche Produktnamen --
    SELECT COUNT(DISTINCT(name)) AS "Anzahl" FROM produkt;
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
    "bild": ""
  },
  {
    "bild": "https://www.dropbox.com/scl/fi/1ydl0gk57tgrpgu991mer/black-logo-hoodie.png?rlkey=oosjkafre4dhew4q42gwfjilh&dl=0"
  },
  {
    "bild": "https://www.dropbox.com/scl/fi/4io4y0ks78aaxt651tghc/White-logo-tee.png?rlkey=imf6pqycvnw8na346khs3msed&dl=0"
  },
  {
    "bild": "https://www.dropbox.com/scl/fi/m9oz0boig6djcjpy6c339/cozy-slides-green.jpg?rlkey=zbzxaos5buu49zlxu6qu7s64e&dl=0"
  },
  {
    "bild": "https://www.dropbox.com/scl/fi/bnjrjlsti0a3yhb4l2hah/baggy-jeans.jpg?rlkey=nkzy12e8xo9rt0twitm36aucb&dl=0"
  },
  {
    "bild": "https://www.dropbox.com/scl/fi/crj98au9a6w3nn9tjgyuo/denim-messenger-bag.jpg?rlkey=fcrn5eg5d9w4ltgak18j548mh&dl=0"
  },
  {
    "bild": "https://www.dropbox.com/scl/fi/ux9tqrswex7bxgx03i8ob/Sunglasses.jpg?rlkey=4pwjjk60xpt4aowaxy6elzqw6&dl=0"
  },
  {
    "bild": "https://www.dropbox.com/scl/fi/6x0jsni9e4thsme0nm3p6/tote-bag.jpg?rlkey=kefvqixckptgfcz5vv71i9pf0&dl=0"
  },
  {
    "bild": "https://www.dropbox.com/scl/fi/xee7ygb9rz7tj4noxbt6u/jorts.jpg?rlkey=09im2g1iqvqumh90n59funkc7&dl=0"
  },
  {
    "bild": "https://www.dropbox.com/scl/fi/bhbgb3ap1epm9k886ox0y/ski-goggles.jpg?rlkey=h4yfi9m22nozn7tuwd10yuxib&dl=0"
  }
]
    */
    
    -- (7) Anzahl Duplikate bei Produktvariationen --
    SELECT COUNT(*) AS total_duplicates
    FROM (
        SELECT COUNT(name)
        FROM produkt
        GROUP BY name, grösse, farbe, material
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
        SELECT name, grösse, farbe, material
        FROM produkt
        GROUP BY name, grösse, farbe, material
        HAVING COUNT(*) > 1
    ) as dup
    ON p.name = dup.name AND 
    p.grösse = dup.grösse AND 
    p.farbe = dup.farbe AND 
    p.material = dup.material;;
    /*
    Resultat:
    []
    */
    
