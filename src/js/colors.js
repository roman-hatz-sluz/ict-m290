const colorMap = {
  JAWSDB_AMBER_URL: { text: "rgb(204, 102, 0)" },
  JAWSDB_AQUA_URL: { text: "rgb(0, 128, 128)" },
  JAWSDB_BLACK_URL: { text: "rgb(0, 0, 0)" },
  JAWSDB_BLUE_URL: { text: "rgb(0, 0, 153)" },
  JAWSDB_BRONZE_URL: { text: "rgb(153, 76, 0)" },
  JAWSDB_BROWN_URL: { text: "rgb(102, 51, 51)" },
  JAWSDB_CHARCOAL_URL: { text: "rgb(77, 96, 102)" },
  JAWSDB_COBALT_URL: { text: "rgb(0, 51, 153)" },
  JAWSDB_COPPER_URL: { text: "rgb(153, 76, 51)" },
  JAWSDB_CRIMSON_URL: { text: "rgb(153, 0, 51)" },
  JAWSDB_CYAN_URL: { text: "rgb(0, 128, 128)" },
  JAWSDB_GOLD_URL: { text: "rgb(204, 153, 0)" },
  JAWSDB_GRAY_URL: { text: "rgb(64, 64, 64)" },
  JAWSDB_GREEN_URL: { text: "rgb(0, 102, 0)" },
  JAWSDB_IVORY_URL: { text: "rgb(102, 102, 0)" },
  JAWSDB_JADE_URL: { text: "rgb(0, 102, 76)" },
  JAWSDB_MAROON_URL: { text: "rgb(102, 0, 0)" },
  JAWSDB_MAUVE_URL: { text: "rgb(153, 102, 204)" },
  JAWSDB_NAVY_URL: { text: "rgb(0, 0, 102)" },
  JAWSDB_OLIVE_URL: { text: "rgb(102, 102, 0)" },
  JAWSDB_ONYX_URL: { text: "rgb(64, 64, 64)" },
  JAWSDB_ORANGE_URL: { text: "rgb(204, 102, 0)" },
  JAWSDB_PINK_URL: { text: "rgb(204, 102, 153)" },
  JAWSDB_PUCE_URL: { text: "rgb(153, 76, 102)" },
  JAWSDB_PURPLE_URL: { text: "rgb(102, 0, 102)" },
  JAWSDB_ROSE_URL: { text: "rgb(204, 0, 102)" },
  JAWSDB_SILVER_URL: { text: "rgb(128, 128, 128)" },
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
    }
  }
}
