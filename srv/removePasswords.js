// still needed?

const fs = require("fs");

function removePasswords() {
  // Read the JSON file
  fs.readFile("./secret.json", "utf8", (err, data) => {
    if (err) {
      console.error("Error reading the file:", err);
      return;
    }

    // Parse the JSON data
    let obj = JSON.parse(data);

    // Iterate over the object and delete the password property
    for (let key in obj) {
      if (obj[key].hasOwnProperty("password")) {
        delete obj[key].password;
      }
    }

    // Convert the object back to a JSON string
    let jsonStr = JSON.stringify(obj, null, 2);
    console.log("jsonStr", jsonStr);
    // Write the new JSON to a file
    fs.writeFile("./srv/groups.json", jsonStr, "utf8", (err) => {
      if (err) {
        console.error("Error writing the file:", err);
      } else {
        console.log("File has been written without passwords.");
      }
    });
  });
}
module.exports = {
  removePasswords,
};
