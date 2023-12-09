
  -- b5 --
 
  
    -- (1) Anzahl Hauptkategorien --
    SELECT COUNT(*) AS "Anzahl" FROM brand;
    /*
    Resultat:
    [
  {
    "Anzahl": 11
  }
]
    */
    
    -- (2) Bilder bei Hauptkategorien --
    SELECT DISTINCT brand_image FROM brand;
    /*
    Resultat:
    [
  {
    "brand_image": "https://imgur.com/a/LP8eBiX"
  },
  {
    "brand_image": "https://imgur.com/a/hZStcos"
  },
  {
    "brand_image": "https://imgur.com/a/UjrK0SQ"
  },
  {
    "brand_image": "https://imgur.com/a/kI2q95V"
  },
  {
    "brand_image": "https://imgur.com/a/6CzWmOM"
  },
  {
    "brand_image": "https://imgur.com/a/WBcdDSC"
  },
  {
    "brand_image": "https://imgur.com/yUll1Wc"
  },
  {
    "brand_image": "https://imgur.com/a/e36hq1c"
  },
  {
    "brand_image": "https://imgur.com/onivScc"
  },
  {
    "brand_image": "https://imgur.com/a/d98r8Ip"
  },
  {
    "brand_image": "https://imgur.com/a/TSpTDXm"
  }
]
    */
    
    -- (3) Produkte ohne passende Hauptkategorie --
    SELECT *
    FROM product p
    WHERE p.brand_id NOT IN (SELECT brand_id FROM brand)
     ;
    /*
    Resultat:
    [
  {
    "product_id": 20,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 21,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 22,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 23,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 24,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 25,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 26,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 27,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 28,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 29,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 30,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 31,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 32,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 33,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 34,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 35,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 36,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 37,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 38,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 39,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 40,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 41,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 42,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 43,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 44,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 45,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 46,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 47,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 48,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 49,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 50,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 51,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 52,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 53,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 54,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 55,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 56,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 57,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 58,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 59,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 60,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 61,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 62,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 63,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 64,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 65,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 66,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 67,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 68,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 69,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 70,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 71,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 72,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 73,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 74,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 75,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 76,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 77,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 78,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 79,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 80,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 81,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 82,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 83,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 84,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 85,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 86,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 87,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 88,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 89,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 90,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 91,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 92,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 93,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 94,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 95,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 96,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 97,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 98,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 99,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 100,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 101,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 102,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 103,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 104,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 105,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 106,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 107,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 108,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 109,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 110,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 111,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 112,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 113,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 114,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 115,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 116,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 117,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 118,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 119,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 120,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 121,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 122,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 123,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 124,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 125,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 126,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 127,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 128,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 129,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 130,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 131,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 132,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 133,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 134,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 135,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 136,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 137,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 138,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 139,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 140,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 141,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 142,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 143,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 144,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 145,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 146,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 147,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 148,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 149,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 150,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 151,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 152,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 153,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 154,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 155,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 156,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 157,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 158,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 159,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 160,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 161,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 162,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 163,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 164,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 165,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 166,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 167,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 168,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 169,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 170,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 171,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 172,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 173,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 174,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 175,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 176,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 177,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 178,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 179,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 180,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 181,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 182,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 183,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 184,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 185,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 186,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 187,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 188,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 189,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 190,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 191,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 192,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 193,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 194,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 195,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 196,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 197,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 198,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 199,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 200,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 201,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 202,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 203,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 204,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 205,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 206,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 207,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 208,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 209,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 210,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 211,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 212,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 213,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 214,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 215,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 216,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 217,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 218,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 219,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 220,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 221,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 222,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 223,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 224,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 225,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 226,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 227,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 228,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 229,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 230,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 231,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 232,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 233,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 234,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 235,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 236,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 237,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 238,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 239,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 240,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 241,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 242,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 243,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 244,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 245,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 246,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 247,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 248,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 249,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 250,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 251,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 252,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 253,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 254,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 255,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 256,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 257,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 258,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 259,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 260,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 261,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 262,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 263,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 264,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 265,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 266,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 267,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 268,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 269,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 270,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 271,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 272,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 273,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 274,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 275,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 276,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 277,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 278,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 279,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 280,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 281,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 282,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 283,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 284,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 285,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 286,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 287,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 288,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 289,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 290,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 291,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 292,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 293,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 294,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 295,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 296,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 297,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 298,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 299,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 300,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 301,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 302,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 303,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 304,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 305,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 306,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 307,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 308,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 309,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 310,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 311,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 312,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 313,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 314,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 315,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 316,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 317,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 318,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 319,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 320,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 321,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 322,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 323,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 324,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 325,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 326,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 327,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 328,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 329,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 330,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 331,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 332,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 333,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 334,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 335,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 336,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 337,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 338,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 339,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 340,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 341,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 342,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 343,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 344,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 345,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 346,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 347,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 348,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 349,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 350,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 351,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 352,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 353,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 354,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 355,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 356,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 357,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 358,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 359,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 360,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 361,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 362,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 363,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 364,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 365,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 366,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 367,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 368,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 369,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 370,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 371,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 372,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 373,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 374,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 375,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 376,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 377,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 378,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 379,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 380,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 381,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 382,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 383,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 384,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 385,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 386,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 387,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 388,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 389,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 390,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 391,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 392,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 393,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 394,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 395,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 396,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 397,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 398,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 399,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 400,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 401,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 402,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 403,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 404,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 405,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 406,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 407,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 408,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 409,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 410,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 411,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 412,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 413,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 414,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 415,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 416,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 417,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 418,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 419,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 420,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 421,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 422,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 423,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 424,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 425,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 426,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 427,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 428,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 429,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 430,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 431,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 432,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 433,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 434,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 435,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 436,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 437,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 438,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 439,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 440,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 441,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 442,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 443,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 444,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 445,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 446,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 447,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 448,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 449,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 450,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 451,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 452,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 453,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 454,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 455,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 456,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 457,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 458,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 459,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 460,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 461,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 462,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 463,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 464,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 465,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 466,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 467,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 468,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 469,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 470,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 471,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 472,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 473,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 474,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 475,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 476,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 477,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 478,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 479,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 480,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 481,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 482,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 483,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 484,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 485,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 486,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 487,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 488,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 489,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 490,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 491,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 492,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 493,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 494,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 495,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 496,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 497,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 498,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 499,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 500,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 501,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 502,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 503,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 504,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 505,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 506,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 507,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 508,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 509,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 510,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 511,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 512,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 513,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 514,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 515,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 516,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 517,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 518,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 519,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 520,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 521,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 522,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 523,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 524,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 525,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 526,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 527,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 528,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 529,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 530,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 531,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 532,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 533,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 534,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 535,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 536,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 537,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 538,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 539,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 540,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 541,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 542,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 543,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 544,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 545,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 546,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 547,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 548,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 549,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 550,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 551,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 552,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 553,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 554,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 555,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 556,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 557,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 558,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 559,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 560,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 561,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 562,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 563,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 564,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 565,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 566,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 567,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 568,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 569,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 570,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 571,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 572,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 573,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 574,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 575,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 576,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 577,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 578,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 579,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 580,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 581,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 582,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 583,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 584,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 585,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 586,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 587,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 588,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 589,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 590,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 591,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 592,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 593,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 594,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 595,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 596,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 597,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 598,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 599,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 600,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 601,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 602,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 603,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 604,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 605,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 606,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 607,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 608,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 609,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 610,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 611,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 612,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 613,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 614,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 615,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 616,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 617,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 618,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 619,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 620,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 621,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 622,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 623,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 624,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 625,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 626,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 627,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 628,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 629,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 630,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 631,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 632,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 633,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 634,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 635,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 636,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 637,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 638,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 639,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 640,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 641,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 642,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 643,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 644,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 645,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 646,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 647,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 648,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 649,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 650,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 651,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 652,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 653,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 654,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 655,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 656,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 657,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 658,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 659,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 660,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 661,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 662,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 663,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 664,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 665,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 666,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 667,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 668,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 669,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 670,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 671,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 672,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 673,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 674,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 675,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 676,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 677,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 678,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 679,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 680,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 681,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 682,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 683,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 684,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 685,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 686,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 687,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 688,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 689,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 690,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 691,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 692,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 693,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 694,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 695,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 696,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 697,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 698,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 699,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 700,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 701,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 702,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 703,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 704,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 705,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 706,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 707,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 708,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 709,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 710,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 711,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 712,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 713,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 714,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 715,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 716,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 717,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 718,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 719,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 720,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 721,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 722,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 723,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 724,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 725,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 726,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 727,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 728,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 729,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 730,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 731,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 732,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 733,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 734,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 735,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 736,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 737,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 738,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 739,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 740,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 741,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 742,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 743,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 744,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 745,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 746,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 747,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 748,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 749,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 750,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 751,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 752,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 753,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 754,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 755,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 756,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 757,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 758,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 759,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 760,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 761,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 762,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 763,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 764,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 765,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 766,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 767,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 768,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 769,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 770,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 771,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 772,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 773,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 774,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 775,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 776,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 777,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 778,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 779,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 780,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 781,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 782,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 783,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 784,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 785,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 786,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 787,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 788,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 789,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 790,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 791,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 792,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 793,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 794,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 795,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 796,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 797,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 798,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 799,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 800,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 801,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 802,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 803,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 804,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 805,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 806,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 807,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 808,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 809,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 810,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 811,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 812,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 813,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 814,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 815,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 816,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 817,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 818,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 819,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 820,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 821,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 822,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 823,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 824,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 825,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 826,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 827,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 828,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 829,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 830,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 831,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 832,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 833,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 834,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 835,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 836,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 837,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 838,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 839,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 840,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 841,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 842,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 843,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 844,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 845,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 846,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 847,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 848,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 849,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 850,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 851,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 852,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 853,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 854,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 855,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 856,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 857,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 858,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 859,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 860,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 861,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 862,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 863,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 864,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 865,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 866,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 867,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 868,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 869,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 870,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 871,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 872,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 873,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 874,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 875,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 876,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 877,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 878,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 879,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 880,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 881,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 882,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 883,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 884,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 885,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 886,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 887,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 888,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 889,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 890,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 891,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 892,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 893,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 894,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 895,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 896,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 897,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 898,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 899,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 900,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 901,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 902,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 903,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 904,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 905,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 906,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 907,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 908,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 909,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 910,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 911,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 912,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 913,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 914,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 915,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 916,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 917,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 918,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 919,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 920,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 921,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 922,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 923,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 924,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 925,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 926,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 927,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 928,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 929,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 930,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 931,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 932,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 933,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 934,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 935,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 936,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 937,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 938,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 939,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 940,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 941,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 942,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 943,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 944,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 945,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 946,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 947,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 948,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 949,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 950,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 951,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 952,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 953,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 954,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 955,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 956,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 957,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 958,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 959,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 960,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 961,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 962,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 963,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 964,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 965,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 966,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 967,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 968,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 969,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 970,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 971,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 972,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 973,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 974,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 975,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 976,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 977,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 978,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 979,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 980,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 981,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 982,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 983,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 984,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 985,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 986,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 987,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 988,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 989,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 990,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 991,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 992,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 993,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 994,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 995,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 996,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 997,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 998,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 999,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1000,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1001,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1002,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1003,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1004,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1005,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1006,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1007,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1008,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1009,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1010,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1011,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1012,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1013,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1014,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1015,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1016,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1017,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1018,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1019,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1020,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1021,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1022,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1023,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1024,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1025,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1026,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1027,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1028,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1029,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1030,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1031,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1032,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1033,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1034,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1035,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1036,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1037,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1038,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1039,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1040,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1041,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1042,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1043,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1044,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1045,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1046,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1047,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1048,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1049,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1050,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1051,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1052,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1053,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1054,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1055,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1056,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1057,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1058,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1059,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1060,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1061,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1062,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1063,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1064,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1065,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1066,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1067,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1068,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1069,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1070,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1071,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1072,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1073,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1074,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1075,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1076,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1077,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1078,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1079,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1080,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1081,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1082,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1083,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1084,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1085,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1086,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1087,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1088,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1089,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1090,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1091,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1092,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1093,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1094,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1095,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1096,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1097,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1098,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1099,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1100,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1101,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1102,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1103,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1104,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1105,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1106,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1107,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1108,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1109,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1110,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1111,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1112,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1113,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1114,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1115,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1116,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1117,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1118,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1119,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1120,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1121,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1122,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1123,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1124,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1125,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1126,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1127,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1128,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1129,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1130,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1131,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1132,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1133,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1134,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1135,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1136,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1137,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1138,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1139,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1140,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1141,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1142,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1143,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1144,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1145,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1146,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1147,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1148,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1149,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1150,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1151,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1152,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1153,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1154,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1155,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1156,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1157,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1158,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1159,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1160,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1161,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1162,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1163,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1164,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1165,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1166,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1167,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1168,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1169,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1170,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1171,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1172,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1173,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1174,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1175,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1176,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1177,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1178,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1179,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1180,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1181,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1182,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1183,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1184,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1185,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1186,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1187,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1188,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1189,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1190,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1191,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1192,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1193,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1194,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1195,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1196,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1197,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1198,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1199,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1200,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1201,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1202,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1203,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1204,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1205,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1206,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1207,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1208,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1209,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1210,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1211,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1212,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1213,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1214,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1215,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1216,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1217,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1218,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1219,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  }
]
    */
    
    -- (4) Anzahl Produkte --
    SELECT COUNT(*) AS "Anzahl" FROM product;
    /*
    Resultat:
    [
  {
    "Anzahl": 1220
  }
]
    */
    
    -- (5) Anzahl unterschiedliche Produktnamen --
    SELECT COUNT(DISTINCT(name)) AS "Anzahl" FROM product;
    /*
    Resultat:
    [
  {
    "Anzahl": 21
  }
]
    */
    
    -- (6) Bilder bei Produkte --
    SELECT DISTINCT image FROM product;
    /*
    Resultat:
    [
  {
    "image": "image_placeholder"
  },
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
        GROUP BY name, color, pad_count, portable
        HAVING COUNT(*) > 1
    ) AS duplicates;
    /*
    Resultat:
    [
  {
    "total_duplicates": 600
  }
]
    */
    
    -- (8) Duplikate bei Produktvariationen --
    SELECT p.*
    FROM product p
    INNER JOIN (
        SELECT name, color, pad_count, portable
        FROM product
        GROUP BY name, color, pad_count, portable
        HAVING COUNT(*) > 1
    ) as dup
    ON p.name = dup.name AND 
    p.color = dup.color AND 
    p.pad_count = dup.pad_count AND 
    p.portable = dup.portable;;
    /*
    Resultat:
    [
  {
    "product_id": 62,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 32,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "image_placeholder",
    "price": 209,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 1
  },
  {
    "product_id": 129,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 99,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 2,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "image_placeholder",
    "price": 940,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 1
  },
  {
    "product_id": 188,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 158,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 3,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "image_placeholder",
    "price": 469,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 1
  },
  {
    "product_id": 304,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 274,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 5,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "image_placeholder",
    "price": 267,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 3
  },
  {
    "product_id": 842,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 812,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 14,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "image_placeholder",
    "price": 299,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 3
  },
  {
    "product_id": 902,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 872,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 15,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "image_placeholder",
    "price": 399,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 5
  },
  {
    "product_id": 1083,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1053,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 18,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "image_placeholder",
    "price": 499,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 12
  },
  {
    "product_id": 1150,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1120,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 19,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "image_placeholder",
    "price": 399,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 8
  },
  {
    "product_id": 50,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 20,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 51,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 21,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 52,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 22,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 53,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 23,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 54,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 24,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 55,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 25,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 56,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 26,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 57,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 27,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 58,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 28,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 59,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 29,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 60,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 30,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 61,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 31,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 63,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 33,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 64,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 34,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 65,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 35,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 66,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 36,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 67,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 37,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 68,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 38,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 69,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 39,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 70,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 40,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 71,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 41,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 72,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 42,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 73,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 43,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 74,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 44,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 75,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 45,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 76,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 46,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 77,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 47,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 78,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 48,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 79,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 49,
    "portable": 0,
    "name": "Maschine Mikro MK3",
    "image": "",
    "price": 209,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 110,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 80,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 111,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 81,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 112,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 82,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 113,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 83,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 114,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 84,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 115,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 85,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 116,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 86,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 117,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 87,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 118,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 88,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 119,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 89,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 120,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 90,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 121,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 91,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 122,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 92,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 123,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 93,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 124,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 94,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 125,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 95,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 126,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 96,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 127,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 97,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 128,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 98,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 130,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 100,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 131,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 101,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 132,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 102,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 133,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 103,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 134,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 104,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 135,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 105,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 136,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 106,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 137,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 107,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 138,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 108,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 139,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 109,
    "portable": 0,
    "name": "Production Center Maschine+",
    "image": "",
    "price": 940,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 170,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 140,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 171,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 141,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 172,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 142,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 173,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 143,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 174,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 144,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 175,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 145,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 176,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 146,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 177,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 147,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 178,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 148,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 179,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 149,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 180,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 150,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 181,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 151,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 182,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 152,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 183,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 153,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 184,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 154,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 185,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 155,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 186,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 156,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 187,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 157,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 189,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 159,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 190,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 160,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 191,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 161,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 192,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 162,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 193,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 163,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 194,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 164,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 195,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 165,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 196,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 166,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 197,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 167,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 198,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 168,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 199,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 169,
    "portable": 0,
    "name": "Maschine MK3",
    "image": "",
    "price": 469,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 230,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 200,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 231,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 201,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 232,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 202,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 233,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 203,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 234,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 204,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 235,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 205,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 236,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 206,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 237,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 207,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 238,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 208,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 239,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 209,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 240,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 210,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 241,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 211,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 242,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 212,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 243,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 213,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 244,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 214,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 245,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 215,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 246,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 216,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 247,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 217,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 248,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 218,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 249,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 219,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 250,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 220,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 251,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 221,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 252,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 222,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 253,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 223,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 254,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 224,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 255,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 225,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 256,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 226,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 257,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 227,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 258,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 228,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 259,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 229,
    "portable": 0,
    "name": "Circuit Rhythm",
    "image": "",
    "price": 347,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 290,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 260,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 291,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 261,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 292,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 262,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 293,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 263,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 294,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 264,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 295,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 265,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 296,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 266,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 297,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 267,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 298,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 268,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 299,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 269,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 300,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 270,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 301,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 271,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 302,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 272,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 303,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 273,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 305,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 275,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 306,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 276,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 307,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 277,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 308,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 278,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 309,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 279,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 310,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 280,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 311,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 281,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 312,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 282,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 313,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 283,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 314,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 284,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 315,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 285,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 316,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 286,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 317,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 287,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 318,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 288,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 319,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 289,
    "portable": 0,
    "name": "BeatStep Pro",
    "image": "",
    "price": 267,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 350,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 320,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 351,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 321,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 352,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 322,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 353,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 323,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 354,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 324,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 355,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 325,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 356,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 326,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 357,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 327,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 358,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 328,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 359,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 329,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 360,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 330,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 361,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 331,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 362,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 332,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 363,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 333,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 364,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 334,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 365,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 335,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 366,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 336,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 367,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 337,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 368,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 338,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 369,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 339,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 370,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 340,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 371,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 341,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 372,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 342,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 373,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 343,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 374,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 344,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 375,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 345,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 376,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 346,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 377,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 347,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 378,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 348,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 379,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 349,
    "portable": 0,
    "name": "Akai MPC One+",
    "image": "",
    "price": 684,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 410,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 380,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 411,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 381,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 412,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 382,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 413,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 383,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 414,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 384,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 415,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 385,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 416,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 386,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 417,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 387,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 418,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 388,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 419,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 389,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 420,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 390,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 421,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 391,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 422,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 392,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 423,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 393,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 424,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 394,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 425,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 395,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 426,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 396,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 427,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 397,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 428,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 398,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 429,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 399,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 430,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 400,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 431,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 401,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 432,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 402,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 433,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 403,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 434,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 404,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 435,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 405,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 436,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 406,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 437,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 407,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 438,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 408,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 439,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 409,
    "portable": 0,
    "name": "Roland TR-8S",
    "image": "",
    "price": 699,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 470,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 440,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 471,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 441,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 472,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 442,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 473,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 443,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 474,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 444,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 475,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 445,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 476,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 446,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 477,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 447,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 478,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 448,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 479,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 449,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 480,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 450,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 481,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 451,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 482,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 452,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 483,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 453,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 484,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 454,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 485,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 455,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 486,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 456,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 487,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 457,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 488,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 458,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 489,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 459,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 490,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 460,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 491,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 461,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 492,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 462,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 493,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 463,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 494,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 464,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 495,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 465,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 496,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 466,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 497,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 467,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 498,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 468,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 499,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 469,
    "portable": 0,
    "name": "Erica Synths Perkons HD-01 Drum Machine",
    "image": "",
    "price": 2059,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 530,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 500,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 531,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 501,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 532,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 502,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 533,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 503,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 534,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 504,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 535,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 505,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 536,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 506,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 537,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 507,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 538,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 508,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 539,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 509,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 540,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 510,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 541,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 511,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 542,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 512,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 543,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 513,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 544,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 514,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 545,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 515,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 546,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 516,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 547,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 517,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 548,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 518,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 549,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 519,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 550,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 520,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 551,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 521,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 552,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 522,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 553,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 523,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 554,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 524,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 555,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 525,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 556,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 526,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 557,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 527,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 558,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 528,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 559,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 529,
    "portable": 0,
    "name": "Roland Aira Compact T-8 Beat Machine",
    "image": "",
    "price": 199,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 590,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 560,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 591,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 561,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 592,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 562,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 593,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 563,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 594,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 564,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 595,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 565,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 596,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 566,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 597,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 567,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 598,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 568,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 599,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 569,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 600,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 570,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 601,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 571,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 602,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 572,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 603,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 573,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 604,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 574,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 605,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 575,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 606,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 576,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 607,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 577,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 608,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 578,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 609,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 579,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 610,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 580,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 611,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 581,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 612,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 582,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 613,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 583,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 614,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 584,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 615,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 585,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 616,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 586,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 617,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 587,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 618,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 588,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 619,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 589,
    "portable": 0,
    "name": "Akai Professional MPD218",
    "image": "",
    "price": 139,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 650,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 620,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 651,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 621,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 652,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 622,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 653,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 623,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 654,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 624,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 655,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 625,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 656,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 626,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 657,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 627,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 658,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 628,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 659,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 629,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 660,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 630,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 661,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 631,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 662,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 632,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 663,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 633,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 664,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 634,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 665,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 635,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 666,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 636,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 667,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 637,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 668,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 638,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 669,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 639,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 670,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 640,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 671,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 641,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 672,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 642,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 673,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 643,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 674,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 644,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 675,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 645,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 676,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 646,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 677,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 647,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 678,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 648,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 679,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 649,
    "portable": 0,
    "name": "Alesis SR16",
    "image": "",
    "price": 155,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 710,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 680,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 711,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 681,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 712,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 682,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 713,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 683,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 714,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 684,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 715,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 685,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 716,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 686,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 717,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 687,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 718,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 688,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 719,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 689,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 720,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 690,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 721,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 691,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 722,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 692,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 723,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 693,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 724,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 694,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 725,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 695,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 726,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 696,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 727,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 697,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 728,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 698,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 729,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 699,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 730,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 700,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 731,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 701,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 732,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 702,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 733,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 703,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 734,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 704,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 735,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 705,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 736,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 706,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 737,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 707,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 738,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 708,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 739,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 709,
    "portable": 0,
    "name": "Korg Volca Beats",
    "image": "",
    "price": 149,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 770,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 740,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 771,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 741,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 772,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 742,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 773,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 743,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 774,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 744,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 775,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 745,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 776,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 746,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 777,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 747,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 778,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 748,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 779,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 749,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 780,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 750,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 781,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 751,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 782,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 752,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 783,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 753,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 784,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 754,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 785,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 755,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 786,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 756,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 787,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 757,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 788,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 758,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 789,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 759,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 790,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 760,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 791,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 761,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 792,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 762,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 793,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 763,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 794,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 764,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 795,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 765,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 796,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 766,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 797,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 767,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 798,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 768,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 799,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 769,
    "portable": 0,
    "name": "Elektron Model:Cycles",
    "image": "",
    "price": 349,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 830,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 800,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 831,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 801,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 832,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 802,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 833,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 803,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 834,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 804,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 835,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 805,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 836,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 806,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 837,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 807,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 838,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 808,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 839,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 809,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 840,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 810,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 841,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 811,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 843,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 813,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 844,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 814,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 845,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 815,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 846,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 816,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 847,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 817,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 848,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 818,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 849,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 819,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 850,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 820,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 851,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 821,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 852,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 822,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 853,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 823,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 854,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 824,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 855,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 825,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 856,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 826,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 857,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 827,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 858,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 828,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 859,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 829,
    "portable": 0,
    "name": "Arturia Drumbrute Impact",
    "image": "",
    "price": 299,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 890,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 860,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 891,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 861,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 892,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 862,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 893,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 863,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 894,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 864,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 895,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 865,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 896,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 866,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 897,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 867,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 898,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 868,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 899,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 869,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 900,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 870,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 901,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 871,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 903,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 873,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 904,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 874,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 905,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 875,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 906,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 876,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 907,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 877,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 908,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 878,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 909,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 879,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 910,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 880,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 911,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 881,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 912,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 882,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 913,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 883,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 914,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 884,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 915,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 885,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 916,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 886,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 917,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 887,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 918,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 888,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 919,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 889,
    "portable": 0,
    "name": "Roland Rhythm Composer (TR-08)",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 950,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 920,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 951,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 921,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 952,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 922,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 953,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 923,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 954,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 924,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 955,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 925,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 956,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 926,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 957,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 927,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 958,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 928,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 959,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 929,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 960,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 930,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 961,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 931,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 962,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 932,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 963,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 933,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 964,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 934,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 965,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 935,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 966,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 936,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 967,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 937,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 968,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 938,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 969,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 939,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 970,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 940,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 971,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 941,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 972,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 942,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 973,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 943,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 974,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 944,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 975,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 945,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 976,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 946,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 977,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 947,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 978,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 948,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 979,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 949,
    "portable": 0,
    "name": "Teenage Engineering Pocket Operator PO-33 K.O.",
    "image": "",
    "price": 99,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1010,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 980,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1011,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 981,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1012,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 982,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1013,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 983,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1014,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 984,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1015,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 985,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1016,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 986,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1017,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 987,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1018,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 988,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1019,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 989,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1020,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 990,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1021,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 991,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1022,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 992,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1023,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 993,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1024,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 994,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1025,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 995,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1026,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 996,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1027,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 997,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1028,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 998,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1029,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 999,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1030,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1000,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1031,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1001,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1032,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1002,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1033,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1003,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1034,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1004,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1035,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1005,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1036,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1006,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1037,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1007,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1038,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1008,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1039,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1009,
    "portable": 0,
    "name": "Elektron Digitakt",
    "image": "",
    "price": 899,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1070,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1040,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1071,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1041,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1072,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1042,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1073,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1043,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1074,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1044,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1075,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1045,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1076,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1046,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1077,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1047,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1078,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1048,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1079,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1049,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1080,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1050,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1081,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1051,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1082,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1052,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1084,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1054,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1085,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1055,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1086,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1056,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1087,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1057,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1088,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1058,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1089,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1059,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1090,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1060,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1091,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1061,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1092,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1062,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1093,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1063,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1094,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1064,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1095,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1065,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1096,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1066,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1097,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1067,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1098,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1068,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1099,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1069,
    "portable": 0,
    "name": "Behringer RD-8 Rhythm Designer",
    "image": "",
    "price": 499,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1130,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1100,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1131,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1101,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1132,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1102,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1133,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1103,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1134,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1104,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1135,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1105,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1136,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1106,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1137,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1107,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1138,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1108,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1139,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1109,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1140,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1110,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1141,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1111,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1142,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1112,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1143,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1113,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1144,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1114,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1145,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1115,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1146,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1116,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1147,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1117,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1148,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1118,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1149,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1119,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1151,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1121,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1152,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1122,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1153,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1123,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1154,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1124,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1155,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1125,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1156,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1126,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1157,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1127,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1158,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1128,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1159,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1129,
    "portable": 0,
    "name": "Korg Electribe 2 Sampler",
    "image": "",
    "price": 399,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1190,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1160,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 8,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1191,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1161,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 8,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1192,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1162,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 8,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1193,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1163,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 8,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1194,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1164,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 8,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1195,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1165,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 8,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1196,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1166,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 12,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1197,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1167,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 12,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1198,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1168,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 12,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1199,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1169,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 12,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1200,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1170,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 12,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1201,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1171,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 12,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1202,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1172,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 16,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1203,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1173,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 16,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1204,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1174,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 16,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1205,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1175,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 16,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1206,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1176,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 16,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1207,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1177,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 16,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1208,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1178,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 24,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1209,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1179,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 24,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1210,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1180,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 24,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1211,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1181,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 24,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1212,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1182,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 24,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1213,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1183,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 24,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1214,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1184,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 36,
    "color": "Schwarz",
    "brand_id": 0
  },
  {
    "product_id": 1215,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1185,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 36,
    "color": "Metalisch",
    "brand_id": 0
  },
  {
    "product_id": 1216,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1186,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 36,
    "color": "Weiss",
    "brand_id": 0
  },
  {
    "product_id": 1217,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1187,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 36,
    "color": "Blau",
    "brand_id": 0
  },
  {
    "product_id": 1218,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1188,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 36,
    "color": "Orange",
    "brand_id": 0
  },
  {
    "product_id": 1219,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  },
  {
    "product_id": 1189,
    "portable": 0,
    "name": "Akai Professional MPC Live II",
    "image": "",
    "price": 1299,
    "pad_count": 36,
    "color": "Rot",
    "brand_id": 0
  }
]
    */
    
