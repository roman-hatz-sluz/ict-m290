-- Adminer 4.8.1 MySQL 8.0.33 dump
SET
  NAMES utf8;

SET
  time_zone = '+00:00';

SET
  foreign_key_checks = 0;

SET
  sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET
  NAMES utf8mb4;

DROP TABLE IF EXISTS `hauptkategorien`;

CREATE TABLE `hauptkategorien` (
  `Hauptkategorie_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Bild_URL` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`Hauptkategorie_ID`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO
  `hauptkategorien` (`Hauptkategorie_ID`, `Name`, `Bild_URL`)
VALUES
  (
    1,
    'Fitness Skates',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTW13E-Skst95U6uj3B7C6wYkO6TOx0O0QQwoACSR4Ff0YqYnAAwrL0MC_SgYXJWgcFnDA&usqp=CAU?.jpg'
  ),
  (
    2,
    'Hockey Skates',
    'https://upload.wikimedia.org/wikipedia/commons/4/40/Breaksituation_beim_Inline-Skaterhockey.jpg'
  ),
  (3, 'Stunt Skates', NULL);

DROP TABLE IF EXISTS `produkte`;

CREATE TABLE `produkte` (
  `Produkt_ID` int NOT NULL AUTO_INCREMENT,
  `Produktname` varchar(255) DEFAULT NULL,
  `Preis` decimal(10, 2) DEFAULT NULL,
  `Hauptkategorie_ID` int DEFAULT NULL,
  `Schuhgrösse` int DEFAULT NULL,
  `Rollen_Durchmesser` int DEFAULT NULL,
  `Farbe` varchar(255) DEFAULT NULL,
  `Bild_URL` varchar(1000) NOT NULL,
  PRIMARY KEY (`Produkt_ID`),
  KEY `Hauptkategorie_ID` (`Hauptkategorie_ID`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO
  `produkte` (
    `Produkt_ID`,
    `Produktname`,
    `Preis`,
    `Hauptkategorie_ID`,
    `Schuhgrösse`,
    `Rollen_Durchmesser`,
    `Farbe`,
    `Bild_URL`
  )
VALUES
  (
    1,
    'Rollerblade Zetrablade',
    150.00,
    1,
    39,
    56,
    'Smaragdgrün',
    ''
  ),
  (
    2,
    'Rollerblade Zetrablade',
    150.00,
    1,
    39,
    56,
    'Karmesinrot',
    ''
  ),
  (
    3,
    'Rollerblade Zetrablade',
    150.00,
    1,
    39,
    56,
    'Azurblau',
    ''
  ),
  (
    4,
    'Rollerblade Zetrablade',
    150.00,
    1,
    39,
    56,
    'Zitronengelb',
    ''
  ),
  (
    5,
    'Rollerblade Zetrablade',
    150.00,
    1,
    39,
    56,
    'Amethystlila',
    ''
  ),
  (
    6,
    'Rollerblade Zetrablade',
    150.00,
    1,
    39,
    60,
    'Smaragdgrün',
    ''
  ),
  (
    7,
    'Rollerblade Zetrablade',
    150.00,
    1,
    39,
    60,
    'Karmesinrot',
    ''
  ),
  (
    8,
    'Rollerblade Zetrablade',
    150.00,
    1,
    39,
    60,
    'Azurblau',
    ''
  ),
  (
    9,
    'Rollerblade Zetrablade',
    150.00,
    1,
    39,
    60,
    'Zitronengelb',
    ''
  ),
  (
    10,
    'Rollerblade Zetrablade',
    150.00,
    1,
    39,
    60,
    'Amethystlila',
    ''
  ),
  (
    11,
    'Rollerblade Zetrablade',
    150.00,
    1,
    39,
    90,
    'Smaragdgrün',
    ''
  ),
  (
    12,
    'Rollerblade Zetrablade',
    150.00,
    1,
    39,
    90,
    'Karmesinrot',
    ''
  ),
  (
    13,
    'Rollerblade Zetrablade',
    150.00,
    1,
    39,
    90,
    'Azurblau',
    ''
  ),
  (
    14,
    'Rollerblade Zetrablade',
    150.00,
    1,
    39,
    90,
    'Zitronengelb',
    ''
  ),
  (
    15,
    'Rollerblade Zetrablade',
    150.00,
    1,
    39,
    90,
    'Amethystlila',
    ''
  ),
  (
    16,
    'Rollerblade Zetrablade',
    150.00,
    1,
    39,
    110,
    'Smaragdgrün',
    ''
  ),
  (
    17,
    'Rollerblade Zetrablade',
    150.00,
    1,
    39,
    110,
    'Karmesinrot',
    ''
  ),
  (
    18,
    'Rollerblade Zetrablade',
    150.00,
    1,
    39,
    110,
    'Azurblau',
    ''
  ),
  (
    19,
    'Rollerblade Zetrablade',
    150.00,
    1,
    39,
    110,
    'Zitronengelb',
    ''
  ),
  (
    20,
    'Rollerblade Zetrablade',
    150.00,
    1,
    39,
    110,
    'Amethystlila',
    ''
  ),
  (
    21,
    'Rollerblade Zetrablade',
    150.00,
    1,
    40,
    56,
    'Smaragdgrün',
    ''
  ),
  (
    22,
    'Rollerblade Zetrablade',
    150.00,
    1,
    40,
    56,
    'Karmesinrot',
    ''
  ),
  (
    23,
    'Rollerblade Zetrablade',
    150.00,
    1,
    40,
    56,
    'Azurblau',
    ''
  ),
  (
    24,
    'Rollerblade Zetrablade',
    150.00,
    1,
    40,
    56,
    'Zitronengelb',
    ''
  ),
  (
    25,
    'Rollerblade Zetrablade',
    150.00,
    1,
    40,
    56,
    'Amethystlila',
    ''
  ),
  (
    26,
    'Rollerblade Zetrablade',
    150.00,
    1,
    40,
    60,
    'Smaragdgrün',
    ''
  ),
  (
    27,
    'Rollerblade Zetrablade',
    150.00,
    1,
    40,
    60,
    'Karmesinrot',
    ''
  ),
  (
    28,
    'Rollerblade Zetrablade',
    150.00,
    1,
    40,
    60,
    'Azurblau',
    ''
  ),
  (
    29,
    'Rollerblade Zetrablade',
    150.00,
    1,
    40,
    60,
    'Zitronengelb',
    ''
  ),
  (
    30,
    'Rollerblade Zetrablade',
    150.00,
    1,
    40,
    60,
    'Amethystlila',
    ''
  ),
  (
    31,
    'Rollerblade Zetrablade',
    150.00,
    1,
    40,
    90,
    'Smaragdgrün',
    ''
  ),
  (
    32,
    'Rollerblade Zetrablade',
    150.00,
    1,
    40,
    90,
    'Karmesinrot',
    ''
  ),
  (
    33,
    'Rollerblade Zetrablade',
    150.00,
    1,
    40,
    90,
    'Azurblau',
    ''
  ),
  (
    34,
    'Rollerblade Zetrablade',
    150.00,
    1,
    40,
    90,
    'Zitronengelb',
    ''
  ),
  (
    35,
    'Rollerblade Zetrablade',
    150.00,
    1,
    40,
    90,
    'Amethystlila',
    ''
  ),
  (
    36,
    'Rollerblade Zetrablade',
    150.00,
    1,
    40,
    110,
    'Smaragdgrün',
    ''
  ),
  (
    37,
    'Rollerblade Zetrablade',
    150.00,
    1,
    40,
    110,
    'Karmesinrot',
    ''
  ),
  (
    38,
    'Rollerblade Zetrablade',
    150.00,
    1,
    40,
    110,
    'Azurblau',
    ''
  ),
  (
    39,
    'Rollerblade Zetrablade',
    150.00,
    1,
    40,
    110,
    'Zitronengelb',
    ''
  ),
  (
    40,
    'Rollerblade Zetrablade',
    150.00,
    1,
    40,
    110,
    'Amethystlila',
    ''
  ),
  (
    41,
    'Rollerblade Zetrablade',
    150.00,
    1,
    41,
    56,
    'Smaragdgrün',
    ''
  ),
  (
    42,
    'Rollerblade Zetrablade',
    150.00,
    1,
    41,
    56,
    'Karmesinrot',
    ''
  ),
  (
    43,
    'Rollerblade Zetrablade',
    150.00,
    1,
    41,
    56,
    'Azurblau',
    ''
  ),
  (
    44,
    'Rollerblade Zetrablade',
    150.00,
    1,
    41,
    56,
    'Zitronengelb',
    ''
  ),
  (
    45,
    'Rollerblade Zetrablade',
    150.00,
    1,
    41,
    56,
    'Amethystlila',
    ''
  ),
  (
    46,
    'Rollerblade Zetrablade',
    150.00,
    1,
    41,
    60,
    'Smaragdgrün',
    ''
  ),
  (
    47,
    'Rollerblade Zetrablade',
    150.00,
    1,
    41,
    60,
    'Karmesinrot',
    ''
  ),
  (
    48,
    'Rollerblade Zetrablade',
    150.00,
    1,
    41,
    60,
    'Azurblau',
    ''
  ),
  (
    49,
    'Rollerblade Zetrablade',
    150.00,
    1,
    41,
    60,
    'Zitronengelb',
    ''
  ),
  (
    50,
    'Rollerblade Zetrablade',
    150.00,
    1,
    41,
    60,
    'Amethystlila',
    ''
  ),
  (
    51,
    'Rollerblade Zetrablade',
    150.00,
    1,
    41,
    90,
    'Smaragdgrün',
    ''
  ),
  (
    52,
    'Rollerblade Zetrablade',
    150.00,
    1,
    41,
    90,
    'Karmesinrot',
    ''
  ),
  (
    53,
    'Rollerblade Zetrablade',
    150.00,
    1,
    41,
    90,
    'Azurblau',
    ''
  ),
  (
    54,
    'Rollerblade Zetrablade',
    150.00,
    1,
    41,
    90,
    'Zitronengelb',
    ''
  ),
  (
    55,
    'Rollerblade Zetrablade',
    150.00,
    1,
    41,
    90,
    'Amethystlila',
    ''
  ),
  (
    56,
    'Rollerblade Zetrablade',
    150.00,
    1,
    41,
    110,
    'Smaragdgrün',
    ''
  ),
  (
    57,
    'Rollerblade Zetrablade',
    150.00,
    1,
    41,
    110,
    'Karmesinrot',
    ''
  ),
  (
    58,
    'Rollerblade Zetrablade',
    150.00,
    1,
    41,
    110,
    'Azurblau',
    ''
  ),
  (
    59,
    'Rollerblade Zetrablade',
    150.00,
    1,
    41,
    110,
    'Zitronengelb',
    ''
  ),
  (
    60,
    'Rollerblade Zetrablade',
    150.00,
    1,
    41,
    110,
    'Amethystlila',
    ''
  ),
  (
    61,
    'Rollerblade Zetrablade',
    150.00,
    1,
    42,
    56,
    'Smaragdgrün',
    ''
  ),
  (
    62,
    'Rollerblade Zetrablade',
    150.00,
    1,
    42,
    56,
    'Karmesinrot',
    ''
  ),
  (
    63,
    'Rollerblade Zetrablade',
    150.00,
    1,
    42,
    56,
    'Azurblau',
    ''
  ),
  (
    64,
    'Rollerblade Zetrablade',
    150.00,
    1,
    42,
    56,
    'Zitronengelb',
    ''
  ),
  (
    65,
    'Rollerblade Zetrablade',
    150.00,
    1,
    42,
    56,
    'Amethystlila',
    ''
  ),
  (
    66,
    'Rollerblade Zetrablade',
    150.00,
    1,
    42,
    60,
    'Smaragdgrün',
    ''
  ),
  (
    67,
    'Rollerblade Zetrablade',
    150.00,
    1,
    42,
    60,
    'Karmesinrot',
    ''
  ),
  (
    68,
    'Rollerblade Zetrablade',
    150.00,
    1,
    42,
    60,
    'Azurblau',
    ''
  ),
  (
    69,
    'Rollerblade Zetrablade',
    150.00,
    1,
    42,
    60,
    'Zitronengelb',
    ''
  ),
  (
    70,
    'Rollerblade Zetrablade',
    150.00,
    1,
    42,
    60,
    'Amethystlila',
    ''
  ),
  (
    71,
    'Rollerblade Zetrablade',
    150.00,
    1,
    42,
    90,
    'Smaragdgrün',
    ''
  ),
  (
    72,
    'Rollerblade Zetrablade',
    150.00,
    1,
    42,
    90,
    'Karmesinrot',
    ''
  ),
  (
    73,
    'Rollerblade Zetrablade',
    150.00,
    1,
    42,
    90,
    'Azurblau',
    ''
  ),
  (
    74,
    'Rollerblade Zetrablade',
    150.00,
    1,
    42,
    90,
    'Zitronengelb',
    ''
  ),
  (
    75,
    'Rollerblade Zetrablade',
    150.00,
    1,
    42,
    90,
    'Amethystlila',
    ''
  ),
  (
    76,
    'Rollerblade Zetrablade',
    150.00,
    1,
    42,
    110,
    'Smaragdgrün',
    ''
  ),
  (
    77,
    'Rollerblade Zetrablade',
    150.00,
    1,
    42,
    110,
    'Karmesinrot',
    ''
  ),
  (
    78,
    'Rollerblade Zetrablade',
    150.00,
    1,
    42,
    110,
    'Azurblau',
    ''
  ),
  (
    79,
    'Rollerblade Zetrablade',
    150.00,
    1,
    42,
    110,
    'Zitronengelb',
    ''
  ),
  (
    80,
    'Rollerblade Zetrablade',
    150.00,
    1,
    42,
    110,
    'Amethystlila',
    ''
  ),
  (
    81,
    'Rollerblade Zetrablade',
    150.00,
    1,
    43,
    56,
    'Smaragdgrün',
    ''
  ),
  (
    82,
    'Rollerblade Zetrablade',
    150.00,
    1,
    43,
    56,
    'Karmesinrot',
    ''
  ),
  (
    83,
    'Rollerblade Zetrablade',
    150.00,
    1,
    43,
    56,
    'Azurblau',
    ''
  ),
  (
    84,
    'Rollerblade Zetrablade',
    150.00,
    1,
    43,
    56,
    'Zitronengelb',
    ''
  ),
  (
    85,
    'Rollerblade Zetrablade',
    150.00,
    1,
    43,
    56,
    'Amethystlila',
    ''
  ),
  (
    86,
    'Rollerblade Zetrablade',
    150.00,
    1,
    43,
    60,
    'Smaragdgrün',
    ''
  ),
  (
    87,
    'Rollerblade Zetrablade',
    150.00,
    1,
    43,
    60,
    'Karmesinrot',
    ''
  ),
  (
    88,
    'Rollerblade Zetrablade',
    150.00,
    1,
    43,
    60,
    'Azurblau',
    ''
  ),
  (
    89,
    'Rollerblade Zetrablade',
    150.00,
    1,
    43,
    60,
    'Zitronengelb',
    ''
  ),
  (
    90,
    'Rollerblade Zetrablade',
    150.00,
    1,
    43,
    60,
    'Amethystlila',
    ''
  ),
  (
    91,
    'Rollerblade Zetrablade',
    150.00,
    1,
    43,
    90,
    'Smaragdgrün',
    ''
  ),
  (
    92,
    'Rollerblade Zetrablade',
    150.00,
    1,
    43,
    90,
    'Karmesinrot',
    ''
  ),
  (
    93,
    'Rollerblade Zetrablade',
    150.00,
    1,
    43,
    90,
    'Azurblau',
    ''
  ),
  (
    94,
    'Rollerblade Zetrablade',
    150.00,
    1,
    43,
    90,
    'Zitronengelb',
    ''
  ),
  (
    95,
    'Rollerblade Zetrablade',
    150.00,
    1,
    43,
    90,
    'Amethystlila',
    ''
  ),
  (
    96,
    'Rollerblade Zetrablade',
    150.00,
    1,
    43,
    110,
    'Smaragdgrün',
    ''
  ),
  (
    97,
    'Rollerblade Zetrablade',
    150.00,
    1,
    43,
    110,
    'Karmesinrot',
    ''
  ),
  (
    98,
    'Rollerblade Zetrablade',
    150.00,
    1,
    43,
    110,
    'Azurblau',
    ''
  ),
  (
    99,
    'Rollerblade Zetrablade',
    150.00,
    1,
    43,
    110,
    'Zitronengelb',
    ''
  ),
  (
    100,
    'Rollerblade Zetrablade',
    150.00,
    1,
    43,
    110,
    'Amethystlila',
    ''
  ),
  (
    101,
    'Rollerblade Zetrablade',
    150.00,
    1,
    44,
    56,
    'Smaragdgrün',
    ''
  ),
  (
    102,
    'Rollerblade Zetrablade',
    150.00,
    1,
    44,
    56,
    'Karmesinrot',
    ''
  ),
  (
    103,
    'Rollerblade Zetrablade',
    150.00,
    1,
    44,
    56,
    'Azurblau',
    ''
  ),
  (
    104,
    'Rollerblade Zetrablade',
    150.00,
    1,
    44,
    56,
    'Zitronengelb',
    ''
  ),
  (
    105,
    'Rollerblade Zetrablade',
    150.00,
    1,
    44,
    56,
    'Amethystlila',
    ''
  ),
  (
    106,
    'Rollerblade Zetrablade',
    150.00,
    1,
    44,
    60,
    'Smaragdgrün',
    ''
  ),
  (
    107,
    'Rollerblade Zetrablade',
    150.00,
    1,
    44,
    60,
    'Karmesinrot',
    ''
  ),
  (
    108,
    'Rollerblade Zetrablade',
    150.00,
    1,
    44,
    60,
    'Azurblau',
    ''
  ),
  (
    109,
    'Rollerblade Zetrablade',
    150.00,
    1,
    44,
    60,
    'Zitronengelb',
    ''
  ),
  (
    110,
    'Rollerblade Zetrablade',
    150.00,
    1,
    44,
    60,
    'Amethystlila',
    ''
  ),
  (
    111,
    'Rollerblade Zetrablade',
    150.00,
    1,
    44,
    90,
    'Smaragdgrün',
    ''
  ),
  (
    112,
    'Rollerblade Zetrablade',
    150.00,
    1,
    44,
    90,
    'Karmesinrot',
    ''
  ),
  (
    113,
    'Rollerblade Zetrablade',
    150.00,
    1,
    44,
    90,
    'Azurblau',
    ''
  ),
  (
    114,
    'Rollerblade Zetrablade',
    150.00,
    1,
    44,
    90,
    'Zitronengelb',
    ''
  ),
  (
    115,
    'Rollerblade Zetrablade',
    150.00,
    1,
    44,
    90,
    'Amethystlila',
    ''
  ),
  (
    116,
    'Rollerblade Zetrablade',
    150.00,
    1,
    44,
    110,
    'Smaragdgrün',
    ''
  ),
  (
    117,
    'Rollerblade Zetrablade',
    150.00,
    1,
    44,
    110,
    'Karmesinrot',
    ''
  ),
  (
    118,
    'Rollerblade Zetrablade',
    150.00,
    1,
    44,
    110,
    'Azurblau',
    ''
  ),
  (
    119,
    'Rollerblade Zetrablade',
    150.00,
    1,
    44,
    110,
    'Zitronengelb',
    ''
  ),
  (
    120,
    'Rollerblade Zetrablade',
    150.00,
    1,
    44,
    110,
    'Amethystlila',
    ''
  ),
  (
    121,
    'Adapt Brutale',
    233.00,
    2,
    39,
    56,
    'Smaragdgrün',
    ''
  ),
  (
    122,
    'Adapt Brutale',
    233.00,
    2,
    39,
    56,
    'Karmesinrot',
    ''
  ),
  (
    123,
    'Adapt Brutale',
    233.00,
    2,
    39,
    56,
    'Azurblau',
    ''
  ),
  (
    124,
    'Adapt Brutale',
    233.00,
    2,
    39,
    56,
    'Zitronengelb',
    ''
  ),
  (
    125,
    'Adapt Brutale',
    233.00,
    2,
    39,
    56,
    'Amethystlila',
    ''
  ),
  (
    126,
    'Adapt Brutale',
    233.00,
    2,
    39,
    60,
    'Smaragdgrün',
    ''
  ),
  (
    127,
    'Adapt Brutale',
    233.00,
    2,
    39,
    60,
    'Karmesinrot',
    ''
  ),
  (
    128,
    'Adapt Brutale',
    233.00,
    2,
    39,
    60,
    'Azurblau',
    ''
  ),
  (
    129,
    'Adapt Brutale',
    233.00,
    2,
    39,
    60,
    'Zitronengelb',
    ''
  ),
  (
    130,
    'Adapt Brutale',
    233.00,
    2,
    39,
    60,
    'Amethystlila',
    ''
  ),
  (
    131,
    'Adapt Brutale',
    233.00,
    2,
    39,
    90,
    'Smaragdgrün',
    ''
  ),
  (
    132,
    'Adapt Brutale',
    233.00,
    2,
    39,
    90,
    'Karmesinrot',
    ''
  ),
  (
    133,
    'Adapt Brutale',
    233.00,
    2,
    39,
    90,
    'Azurblau',
    ''
  ),
  (
    134,
    'Adapt Brutale',
    233.00,
    2,
    39,
    90,
    'Zitronengelb',
    ''
  ),
  (
    135,
    'Adapt Brutale',
    233.00,
    2,
    39,
    90,
    'Amethystlila',
    ''
  ),
  (
    136,
    'Adapt Brutale',
    233.00,
    2,
    39,
    110,
    'Smaragdgrün',
    ''
  ),
  (
    137,
    'Adapt Brutale',
    233.00,
    2,
    39,
    110,
    'Karmesinrot',
    ''
  ),
  (
    138,
    'Adapt Brutale',
    233.00,
    2,
    39,
    110,
    'Azurblau',
    ''
  ),
  (
    139,
    'Adapt Brutale',
    233.00,
    2,
    39,
    110,
    'Zitronengelb',
    ''
  ),
  (
    140,
    'Adapt Brutale',
    233.00,
    2,
    39,
    110,
    'Amethystlila',
    ''
  ),
  (
    141,
    'Adapt Brutale',
    233.00,
    2,
    40,
    56,
    'Smaragdgrün',
    ''
  ),
  (
    142,
    'Adapt Brutale',
    233.00,
    2,
    40,
    56,
    'Karmesinrot',
    ''
  ),
  (
    143,
    'Adapt Brutale',
    233.00,
    2,
    40,
    56,
    'Azurblau',
    ''
  ),
  (
    144,
    'Adapt Brutale',
    233.00,
    2,
    40,
    56,
    'Zitronengelb',
    ''
  ),
  (
    145,
    'Adapt Brutale',
    233.00,
    2,
    40,
    56,
    'Amethystlila',
    ''
  ),
  (
    146,
    'Adapt Brutale',
    233.00,
    2,
    40,
    60,
    'Smaragdgrün',
    ''
  ),
  (
    147,
    'Adapt Brutale',
    233.00,
    2,
    40,
    60,
    'Karmesinrot',
    ''
  ),
  (
    148,
    'Adapt Brutale',
    233.00,
    2,
    40,
    60,
    'Azurblau',
    ''
  ),
  (
    149,
    'Adapt Brutale',
    233.00,
    2,
    40,
    60,
    'Zitronengelb',
    ''
  ),
  (
    150,
    'Adapt Brutale',
    233.00,
    2,
    40,
    60,
    'Amethystlila',
    ''
  ),
  (
    151,
    'Adapt Brutale',
    233.00,
    2,
    40,
    90,
    'Smaragdgrün',
    ''
  ),
  (
    152,
    'Adapt Brutale',
    233.00,
    2,
    40,
    90,
    'Karmesinrot',
    ''
  ),
  (
    153,
    'Adapt Brutale',
    233.00,
    2,
    40,
    90,
    'Azurblau',
    ''
  ),
  (
    154,
    'Adapt Brutale',
    233.00,
    2,
    40,
    90,
    'Zitronengelb',
    ''
  ),
  (
    155,
    'Adapt Brutale',
    233.00,
    2,
    40,
    90,
    'Amethystlila',
    ''
  ),
  (
    156,
    'Adapt Brutale',
    233.00,
    2,
    40,
    110,
    'Smaragdgrün',
    ''
  ),
  (
    157,
    'Adapt Brutale',
    233.00,
    2,
    40,
    110,
    'Karmesinrot',
    ''
  ),
  (
    158,
    'Adapt Brutale',
    233.00,
    2,
    40,
    110,
    'Azurblau',
    ''
  ),
  (
    159,
    'Adapt Brutale',
    233.00,
    2,
    40,
    110,
    'Zitronengelb',
    ''
  ),
  (
    160,
    'Adapt Brutale',
    233.00,
    2,
    40,
    110,
    'Amethystlila',
    ''
  ),
  (
    161,
    'Adapt Brutale',
    233.00,
    2,
    41,
    56,
    'Smaragdgrün',
    ''
  ),
  (
    162,
    'Adapt Brutale',
    233.00,
    2,
    41,
    56,
    'Karmesinrot',
    ''
  ),
  (
    163,
    'Adapt Brutale',
    233.00,
    2,
    41,
    56,
    'Azurblau',
    ''
  ),
  (
    164,
    'Adapt Brutale',
    233.00,
    2,
    41,
    56,
    'Zitronengelb',
    ''
  ),
  (
    165,
    'Adapt Brutale',
    233.00,
    2,
    41,
    56,
    'Amethystlila',
    ''
  ),
  (
    166,
    'Adapt Brutale',
    233.00,
    2,
    41,
    60,
    'Smaragdgrün',
    ''
  ),
  (
    167,
    'Adapt Brutale',
    233.00,
    2,
    41,
    60,
    'Karmesinrot',
    ''
  ),
  (
    168,
    'Adapt Brutale',
    233.00,
    2,
    41,
    60,
    'Azurblau',
    ''
  ),
  (
    169,
    'Adapt Brutale',
    233.00,
    2,
    41,
    60,
    'Zitronengelb',
    ''
  ),
  (
    170,
    'Adapt Brutale',
    233.00,
    2,
    41,
    60,
    'Amethystlila',
    ''
  ),
  (
    171,
    'Adapt Brutale',
    233.00,
    2,
    41,
    90,
    'Smaragdgrün',
    ''
  ),
  (
    172,
    'Adapt Brutale',
    233.00,
    2,
    41,
    90,
    'Karmesinrot',
    ''
  ),
  (
    173,
    'Adapt Brutale',
    233.00,
    2,
    41,
    90,
    'Azurblau',
    ''
  ),
  (
    174,
    'Adapt Brutale',
    233.00,
    2,
    41,
    90,
    'Zitronengelb',
    ''
  ),
  (
    175,
    'Adapt Brutale',
    233.00,
    2,
    41,
    90,
    'Amethystlila',
    ''
  ),
  (
    176,
    'Adapt Brutale',
    233.00,
    2,
    41,
    110,
    'Smaragdgrün',
    ''
  ),
  (
    177,
    'Adapt Brutale',
    233.00,
    2,
    41,
    110,
    'Karmesinrot',
    ''
  ),
  (
    178,
    'Adapt Brutale',
    233.00,
    2,
    41,
    110,
    'Azurblau',
    ''
  ),
  (
    179,
    'Adapt Brutale',
    233.00,
    2,
    41,
    110,
    'Zitronengelb',
    ''
  ),
  (
    180,
    'Adapt Brutale',
    233.00,
    2,
    41,
    110,
    'Amethystlila',
    ''
  ),
  (
    181,
    'Adapt Brutale',
    233.00,
    2,
    42,
    56,
    'Smaragdgrün',
    ''
  ),
  (
    182,
    'Adapt Brutale',
    233.00,
    2,
    42,
    56,
    'Karmesinrot',
    ''
  ),
  (
    183,
    'Adapt Brutale',
    233.00,
    2,
    42,
    56,
    'Azurblau',
    ''
  ),
  (
    184,
    'Adapt Brutale',
    233.00,
    2,
    42,
    56,
    'Zitronengelb',
    ''
  ),
  (
    185,
    'Adapt Brutale',
    233.00,
    2,
    42,
    56,
    'Amethystlila',
    ''
  ),
  (
    186,
    'Adapt Brutale',
    233.00,
    2,
    42,
    60,
    'Smaragdgrün',
    ''
  ),
  (
    187,
    'Adapt Brutale',
    233.00,
    2,
    42,
    60,
    'Karmesinrot',
    ''
  ),
  (
    188,
    'Adapt Brutale',
    233.00,
    2,
    42,
    60,
    'Azurblau',
    ''
  ),
  (
    189,
    'Adapt Brutale',
    233.00,
    2,
    42,
    60,
    'Zitronengelb',
    ''
  ),
  (
    190,
    'Adapt Brutale',
    233.00,
    2,
    42,
    60,
    'Amethystlila',
    ''
  ),
  (
    191,
    'Adapt Brutale',
    233.00,
    2,
    42,
    90,
    'Smaragdgrün',
    ''
  ),
  (
    192,
    'Adapt Brutale',
    233.00,
    2,
    42,
    90,
    'Karmesinrot',
    ''
  ),
  (
    193,
    'Adapt Brutale',
    233.00,
    2,
    42,
    90,
    'Azurblau',
    ''
  ),
  (
    194,
    'Adapt Brutale',
    233.00,
    2,
    42,
    90,
    'Zitronengelb',
    ''
  ),
  (
    195,
    'Adapt Brutale',
    233.00,
    2,
    42,
    90,
    'Amethystlila',
    ''
  ),
  (
    196,
    'Adapt Brutale',
    233.00,
    2,
    42,
    110,
    'Smaragdgrün',
    ''
  ),
  (
    197,
    'Adapt Brutale',
    233.00,
    2,
    42,
    110,
    'Karmesinrot',
    ''
  ),
  (
    198,
    'Adapt Brutale',
    233.00,
    2,
    42,
    110,
    'Azurblau',
    ''
  ),
  (
    199,
    'Adapt Brutale',
    233.00,
    2,
    42,
    110,
    'Zitronengelb',
    ''
  ),
  (
    200,
    'Adapt Brutale',
    233.00,
    2,
    42,
    110,
    'Amethystlila',
    ''
  ),
  (
    201,
    'Adapt Brutale',
    233.00,
    2,
    43,
    56,
    'Smaragdgrün',
    ''
  ),
  (
    202,
    'Adapt Brutale',
    233.00,
    2,
    43,
    56,
    'Karmesinrot',
    ''
  ),
  (
    203,
    'Adapt Brutale',
    233.00,
    2,
    43,
    56,
    'Azurblau',
    ''
  ),
  (
    204,
    'Adapt Brutale',
    233.00,
    2,
    43,
    56,
    'Zitronengelb',
    ''
  ),
  (
    205,
    'Adapt Brutale',
    233.00,
    2,
    43,
    56,
    'Amethystlila',
    ''
  ),
  (
    206,
    'Adapt Brutale',
    233.00,
    2,
    43,
    60,
    'Smaragdgrün',
    ''
  ),
  (
    207,
    'Adapt Brutale',
    233.00,
    2,
    43,
    60,
    'Karmesinrot',
    ''
  ),
  (
    208,
    'Adapt Brutale',
    233.00,
    2,
    43,
    60,
    'Azurblau',
    ''
  ),
  (
    209,
    'Adapt Brutale',
    233.00,
    2,
    43,
    60,
    'Zitronengelb',
    ''
  ),
  (
    210,
    'Adapt Brutale',
    233.00,
    2,
    43,
    60,
    'Amethystlila',
    ''
  ),
  (
    211,
    'Adapt Brutale',
    233.00,
    2,
    43,
    90,
    'Smaragdgrün',
    ''
  ),
  (
    212,
    'Adapt Brutale',
    233.00,
    2,
    43,
    90,
    'Karmesinrot',
    ''
  ),
  (
    213,
    'Adapt Brutale',
    233.00,
    2,
    43,
    90,
    'Azurblau',
    ''
  ),
  (
    214,
    'Adapt Brutale',
    233.00,
    2,
    43,
    90,
    'Zitronengelb',
    ''
  ),
  (
    215,
    'Adapt Brutale',
    233.00,
    2,
    43,
    90,
    'Amethystlila',
    ''
  ),
  (
    216,
    'Adapt Brutale',
    233.00,
    2,
    43,
    110,
    'Smaragdgrün',
    ''
  ),
  (
    217,
    'Adapt Brutale',
    233.00,
    2,
    43,
    110,
    'Karmesinrot',
    ''
  ),
  (
    218,
    'Adapt Brutale',
    233.00,
    2,
    43,
    110,
    'Azurblau',
    ''
  ),
  (
    219,
    'Adapt Brutale',
    233.00,
    2,
    43,
    110,
    'Zitronengelb',
    ''
  ),
  (
    220,
    'Adapt Brutale',
    233.00,
    2,
    43,
    110,
    'Amethystlila',
    ''
  ),
  (
    221,
    'Adapt Brutale',
    233.00,
    2,
    44,
    56,
    'Smaragdgrün',
    ''
  ),
  (
    222,
    'Adapt Brutale',
    233.00,
    2,
    44,
    56,
    'Karmesinrot',
    ''
  ),
  (
    223,
    'Adapt Brutale',
    233.00,
    2,
    44,
    56,
    'Azurblau',
    ''
  ),
  (
    224,
    'Adapt Brutale',
    233.00,
    2,
    44,
    56,
    'Zitronengelb',
    ''
  ),
  (
    225,
    'Adapt Brutale',
    233.00,
    2,
    44,
    56,
    'Amethystlila',
    ''
  ),
  (
    226,
    'Adapt Brutale',
    233.00,
    2,
    44,
    60,
    'Smaragdgrün',
    ''
  ),
  (
    227,
    'Adapt Brutale',
    233.00,
    2,
    44,
    60,
    'Karmesinrot',
    ''
  ),
  (
    228,
    'Adapt Brutale',
    233.00,
    2,
    44,
    60,
    'Azurblau',
    ''
  ),
  (
    229,
    'Adapt Brutale',
    233.00,
    2,
    44,
    60,
    'Zitronengelb',
    ''
  ),
  (
    230,
    'Adapt Brutale',
    233.00,
    2,
    44,
    60,
    'Amethystlila',
    ''
  ),
  (
    231,
    'Adapt Brutale',
    233.00,
    2,
    44,
    90,
    'Smaragdgrün',
    ''
  ),
  (
    232,
    'Adapt Brutale',
    233.00,
    2,
    44,
    90,
    'Karmesinrot',
    ''
  ),
  (
    233,
    'Adapt Brutale',
    233.00,
    2,
    44,
    90,
    'Azurblau',
    ''
  ),
  (
    234,
    'Adapt Brutale',
    233.00,
    2,
    44,
    90,
    'Zitronengelb',
    ''
  ),
  (
    235,
    'Adapt Brutale',
    233.00,
    2,
    44,
    90,
    'Amethystlila',
    ''
  ),
  (
    236,
    'Adapt Brutale',
    233.00,
    2,
    44,
    110,
    'Smaragdgrün',
    ''
  ),
  (
    237,
    'Adapt Brutale',
    233.00,
    2,
    44,
    110,
    'Karmesinrot',
    ''
  ),
  (
    238,
    'Adapt Brutale',
    233.00,
    2,
    44,
    110,
    'Azurblau',
    ''
  ),
  (
    239,
    'Adapt Brutale',
    233.00,
    2,
    44,
    110,
    'Zitronengelb',
    ''
  ),
  (
    240,
    'Adapt Brutale',
    233.00,
    2,
    44,
    110,
    'Amethystlila',
    ''
  );

-- 2023-12-14 14:48:41