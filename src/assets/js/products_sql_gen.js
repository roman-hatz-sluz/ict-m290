// (1) Ändern Sie das Beispiel für ihr Grundsortiment. Fügen Sie alle Produkte aus ihrem Grundsortiment hinzu.
const products = [
  {
    Produktname: "Rollerblade Zetrablade",
    Preis: 150,
    Hauptkategorie_ID: 1,
    Schuhgrösse: 43,
    Rollen_Durchmesser: 90,
    Farbe: "grün",
  },
  {
    Produktname: "Adapt Brutale",
    Preis: 233,
    Hauptkategorie_ID: 2,
    Schuhgrösse: 42,
    Rollen_Durchmesser: 60,
    Farbe: "grün",
  },
];

// (2) Ändern Sie die Kategorien so, dass ihre Kategorien abgebildet werden
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
    name: "Farbe",
    values: ["grün", "rot", "blau", "gelb", "lila"],
  },
];

// (3) Ändern Sie den Namen auf den Namen ihrer Produkte Tabelle.
const TABLE_NAME = "Produkte";

// (4) Den folgenden Code müssen Sie nicht verstehen

let valuesToInsert = [];
products.forEach((product) => {
  const combinations = categories
    .map((category) => category.values)
    .reduce((a, b) => {
      return a.flatMap((d) => b.map((e) => [d, e].flat()));
    });

  combinations.forEach((combination) => {
    let valueString = Object.keys(product)
      .map((key) => {
        let categoryIndex = categories.findIndex(
          (category) => category.name === key,
        );
        if (categoryIndex !== -1) {
          return `"${combination[categoryIndex]}"`;
        }
        return `"${product[key]}"`;
      })
      .join(", ");

    valuesToInsert.push(`(${valueString})`);
  });
});

const columnNames = Object.keys(products[0]).join(", ");

const insertQuery = `INSERT INTO ${TABLE_NAME} (${columnNames}) VALUES 
${valuesToInsert.join(", \n")};`;

document.write(
  "" +
    valuesToInsert.length +
    " Produkte wurden erstellt.</br>Kopieren Sie den folgenden Code in Adminer bei 'SQL Kommando':",
);

document.write("<pre>" + insertQuery + "</pre>");
