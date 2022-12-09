// Grundsortiment (Vorgabe: 10 Produkte)
const products = [
  {
    Produktname: "Rollerblade Zetrablade",
    Preis: 150,
    Lagerbestand: 1,
    Hauptkategorie_ID: 21,
  },
  /* 
    // Beispiel nächster Eintrag
    {
      Produktname: "Roces 5th Element",
      Preis: 200,
      Lagerbestand: 1,
      Hauptkategorie_ID: 31,
    },
    */
];

// Kategorien für die Produktvariaten
const categories = [
  {
    name: "Schuhgrösse",
    values: [39, 40, 41, 42, 43, 44],
  },
  {
    name: "Rollen_Durchmesser",
    values: [56, 60, 90, 110],
  },
  {
    name: "Farbe_ID",
    values: [1, 11, 21, 31, 41],
  },
];

const categorySets = [];
categories[0].values.forEach((category1) => {
  categories[1].values.forEach((category2) => {
    categories[2].values.forEach((category3) => {
      categorySets.push([category1, category2, category3]);
    });
  });
});
let i = 0;
products.forEach((product) => {
  categorySets.forEach((categorySet) => {
    i++;
    document.write(`INSERT INTO Produkte
      (
          Produktname, 
          Preis, 
          Lagerbestand, 
          Hauptkategorie_ID,
          Schuhgrösse,
          Rollen_Durchmesser,
          Farbe_ID
      )
      VALUES (
          "${product.Produktname}", 
          ${product.Preis}, 
          ${product.Lagerbestand}, 
          ${product.Hauptkategorie_ID},
          "${categorySet[0]}",
          "${categorySet[1]}",
          "${categorySet[2]}"
      ); <br>`);
  });
});

console.log(i + " Produkte");
