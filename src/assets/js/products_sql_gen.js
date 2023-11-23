const products = [
  {
    Produktname: "Rollerblade Zetrablade",
    Preis: 150,
    Lagerbestand: 1,
    Hauptkategorie_ID: 21,
  },
  // Weitere Produkte können hier hinzugefügt werden
];

// Kategorien für die Produktvarianten definieren
const categories = [
  { name: "Schuhgrösse", values: [39, 40, 41, 42, 43, 44] },
  { name: "Rollen_Durchmesser", values: [56, 60, 90, 110] },
  { name: "Farbe_ID", values: [1, 11, 21, 31, 41] },
];

// Werte für das SQL-Statement vorbereiten
let values = [];

// Kombinationen der Kategoriewerte erstellen
categories[0].values.forEach(schuhgroesse => {
  categories[1].values.forEach(rollenDurchmesser => {
    categories[2].values.forEach(farbeID => {
      // Für jedes Produkt Kombinationen hinzufügen
      products.forEach(product => {
        // Wertekombination für das SQL-Statement
        values.push(`("${product.Produktname}", ${product.Preis}, ${product.Lagerbestand}, ${product.Hauptkategorie_ID}, ${schuhgroesse}, ${rollenDurchmesser}, ${farbeID})`);
      });
    });
  });
});

// Einzelnes SQL-Statement erzeugen
let sql = `INSERT INTO Produkte (Produktname, Preis, Lagerbestand, Hauptkategorie_ID, Schuhgrösse, Rollen_Durchmesser, Farbe_ID) VALUES ${values.join(", ")};`;

// SQL-Statement in der Konsole ausgeben
document.write(sql);