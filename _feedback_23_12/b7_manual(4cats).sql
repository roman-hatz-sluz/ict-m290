-- b7 --
-- (1) Anzahl Hauptkategorien --
SELECT
  COUNT(*) AS "Anzahl"
FROM
  Marke;

/*
 Resultat:
 [
 {
 "Anzahl": 4
 }
 ]
 */
-- (2) Bilder bei Hauptkategorien --
SELECT
  DISTINCT Bild
FROM
  Marke;

/*
 Resultat:
 [
 {
 "Bild": ""
 }
 ]
 */
-- (3) Produkte ohne passende Hauptkategorie --
SELECT
  *
FROM
  Produkt p
WHERE
  p.Marke_id NOT IN (
    SELECT
      Marke_id
    FROM
      Marke
  );

/*
 Resultat:
 []
 */
-- (4) Anzahl Produkte --
SELECT
  COUNT(*) AS "Anzahl"
FROM
  Produkt;

/*
 Resultat:
 [
 {
 "Anzahl": 9518
 }
 ]
 */
-- (5) Anzahl unterschiedliche Produktnamen --
SELECT
  COUNT(DISTINCT(Name)) AS "Anzahl"
FROM
  Produkt;

/*
 Resultat:
 [
 {
 "Anzahl": 12
 }
 ]
 */
-- (6) Bilder bei Produkte --
SELECT
  DISTINCT Bild
FROM
  Produkt;

/*
 Resultat:
 [
 {
 "Bild": ""
 }
 ]
 */
-- (7) Anzahl Duplikate bei Produktvariationen --
SELECT
  COUNT(*) AS total_duplicates
FROM
  (
    SELECT
      COUNT(Name)
    FROM
      Produkt
    GROUP BY
      Name,
      Farbe,
      Flex,
      Schlägerlänge,
      Auslegerseite
    HAVING
      COUNT(*) > 1
  ) AS duplicates;

/*
 Resultat:
 [
 {
 "total_duplicates": 12
 }
 ]
 */