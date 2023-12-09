-- al5 --
-- (1) Anzahl Hauptkategorien --
SELECT
    COUNT(*) AS "Anzahl"
FROM
    dienstag_hauptkategorien;

-- (2) Bilder bei Hauptkategorien --
SELECT
    DISTINCT Bilder
FROM
    dienstag_hauptkategorien;

-- (3) Anzahl Produkte --
SELECT
    COUNT(*)
FROM
    dienstag_produkte;

-- (4) Bilder bei Produkte --
SELECT
    DISTINCT Bild
FROM
    dienstag_produkte;

-- (5) Anzahl Duplikate bei Produktvariationen --
SELECT
    Produktname,
    Kategorien_Groesse_ID,
    Kategorien_Farbe_ID,
    Kategorien_Verschluss_ID
FROM
    (
        SELECT
            *
        FROM
            dienstag_produkte p,
            dienstag_produkte_kategorien pk
        WHERE
            pk.Produkt_ID = p.ID
    ) AS produkt
GROUP BY
    Produktname,
    Kategorien_Groesse_ID,
    Kategorien_Farbe_ID,
    Kategorien_Verschluss_ID
HAVING
    COUNT(*) > 1
ORDER BY
    Produktname;

/* 
 202 Duplikate, das ist etwas viel.. 
 
 Wie nachvollziehen? Führen Sie die folgenden beiden Queries aus: 
 -- 1: alle Produkt IDs für Produkte mit Namen Anderson ermitteln
 SELECT ID from dienstag_produkte 
 WHERE Produktname = "Anderson";
 
 -- 2: alle Produkt Kategorien für Produkte mit Namen Anderson 
 SELECT * FROM dienstag_produkte_kategorien 
 WHERE Produkt_ID IN (
 SELECT ID from dienstag_produkte 
 WHERE Produktname = "Anderson"
 )
 ORDER BY Kategorien_Groesse_ID, Kategorien_Farbe_ID, Kategorien_Verschluss_ID;
 
 */