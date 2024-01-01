const fs = require("fs");
function generateHtmlFile(
  groupName: string,
  imageUrls: string[],
  filePath = "images.html",
) {
  const imgTags = imageUrls.map((url) => `<img src="${url}">`);
  const htmlContent = `
    <!DOCTYPE html>
    <html>
      <head>
        <title>Image Gallery ${groupName}</title>
      </head>
      <style>
        img {
          max-width: 600px;
        }
      </style>
      <body>
        <p>Gruppe: ${groupName}</p>
        <p>Anzahl: ${imageUrls.length} (mindestens 14)</p>
        ${imgTags.join("<br/><br/>")}
        <br/><br/>
        Mindestgrösse: <br/>
        <img src="https://i.ibb.co/M70qYW6/placeholder-400x400.png"/>
        <br/><br/>
      </body>
    </html>
  `;

  fs.writeFile(filePath, htmlContent, (err: any) => {
    if (err) {
      console.error("Error writing file:", err);
      return;
    }
    console.log(`HTML file written successfully to ${filePath}`);
  });
}
module.exports = {
  generateHtmlFile,
};
