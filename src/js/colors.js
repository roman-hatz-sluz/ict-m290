// Define a map to associate JAWSDB color URLs with their color names and corresponding RGB values
const colorMap = {
  JAWSDB_AMBER_URL: { text: "rgb(255, 191, 0)", background: "#003366" },
  JAWSDB_AQUA_URL: { text: "rgb(0, 255, 255)", background: "#004080" },
  JAWSDB_BLACK_URL: { text: "rgb(0, 0, 0)", background: "#e0e0e0" },
  JAWSDB_BLUE_URL: { text: "rgb(0, 0, 255)", background: "#cce5ff" },
  JAWSDB_BRONZE_URL: { text: "rgb(205, 127, 50)", background: "#003355" },
  JAWSDB_BROWN_URL: { text: "rgb(165, 42, 42)", background: "#00263a" },
  JAWSDB_CHARCOAL_URL: { text: "rgb(54, 69, 79)", background: "#cce0ff" },
  JAWSDB_COBALT_URL: { text: "rgb(0, 71, 171)", background: "#a0c4ff" },
  JAWSDB_COPPER_URL: { text: "rgb(184, 115, 51)", background: "#004060" },
  JAWSDB_CRIMSON_URL: { text: "rgb(220, 20, 60)", background: "#001a33" },
  JAWSDB_CYAN_URL: { text: "rgb(0, 255, 255)", background: "#004080" },
  JAWSDB_GOLD_URL: { text: "rgb(255, 215, 0)", background: "#003366" },
  JAWSDB_GRAY_URL: { text: "rgb(128, 128, 128)", background: "#e0f0ff" },
  JAWSDB_GREEN_URL: { text: "rgb(0, 128, 0)", background: "#cce0ff" },
  JAWSDB_IVORY_URL: { text: "rgb(255, 255, 240)", background: "#002040" },
  JAWSDB_JADE_URL: { text: "rgb(0, 168, 107)", background: "#004d66" },
  JAWSDB_MAROON_URL: { text: "rgb(128, 0, 0)", background: "#a0c4ff" },
  JAWSDB_MAUVE_URL: { text: "rgb(224, 176, 255)", background: "#001a40" },
  JAWSDB_NAVY_URL: { text: "rgb(0, 0, 128)", background: "#e0f0ff" },
  JAWSDB_OLIVE_URL: { text: "rgb(128, 128, 0)", background: "#004d80" },
  JAWSDB_ONYX_URL: { text: "rgb(53, 56, 57)", background: "#dceeff" },
  JAWSDB_ORANGE_URL: { text: "rgb(255, 165, 0)", background: "#003355" },
  JAWSDB_PINK_URL: { text: "rgb(255, 192, 203)", background: "#00264d" },
  JAWSDB_PUCE_URL: { text: "rgb(204, 136, 153)", background: "#004080" },
  JAWSDB_PURPLE_URL: { text: "rgb(128, 0, 128)", background: "#cce0ff" },
  JAWSDB_ROSE_URL: { text: "rgb(255, 0, 127)", background: "#00264d" },
  JAWSDB_SILVER_URL: { text: "rgb(192, 192, 192)", background: "#004080" },
};

export default function applyColors() {
  const element = document.querySelectorAll("[data-dbname]")[0];

  const dbName = element.getAttribute("data-dbname");
  const colorInfo = colorMap[dbName];
  if (colorInfo) {
    const groupColoredElements =
      document.getElementsByClassName("group-colored");

    // Apply the colorInfo to each "group-colored" element
    for (let i = 0; i < groupColoredElements.length; i++) {
      groupColoredElements[i].style.color = colorInfo.text;
      //groupColoredElements[i].style.backgroundColor = colorInfo.background;
    }
  }
}
