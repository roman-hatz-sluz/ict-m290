import renderData from "./sql-renderer";
import { sqlFetch } from "./helpers";
let groupValue = null;
let resultPane;

export default function init() {
  groupValue = document.body.getAttribute("data-group");
  let className = document.body.getAttribute("data-class") || "";
  let shopName = document.body.getAttribute("data-name") || "";

  let html = `Thema "${shopName}" (Gruppe ${className}${groupValue.replace(
    /[^0-9]/g,
    ""
  )})`;
  resultPane = document.getElementById("result");
  if (groupValue === "teacher") {
    html = `Thema Inline-Skates (Gruppe: Teacher)`;
  }
  if (groupValue === "m291aL" || groupValue === "m291b") {
    html = groupValue;
  }

  document.getElementById("header").innerHTML = html;
  getData(document.body.getAttribute("data-group"));
  localStorage.setItem("group", groupValue);
}

async function getData() {
  resultPane.classList.add("loader");
  document.getElementById("result").innerHTML = "";
  const METRICS_SQL = `SELECT table_name, create_time
FROM information_schema.tables
WHERE table_schema !="information_schema"
ORDER BY table_name ASC`;
  const data = {
    group: groupValue,
    sql: METRICS_SQL,
    pw: localStorage.getItem("pw"),
  };
  const metrics = await sqlFetch(data);
  console.log("renderData", metrics);
  if (metrics[1]) {
    const tablesCount = metrics[1].length;
    if (tablesCount < 1) {
      resultPane.classList.remove("loader");
      resultPane.innerHTML = "Keine Tabellen vorhanden.";
    }

    for (const metric of metrics[1]) {
      data.sql = `
        SELECT COUNT(*) AS "Anzahl Zeilen", "${metric.create_time}" AS "Erstellungsdatum" FROM ${metric.table_name};
        -- EXPLAIN ${metric.table_name};`;
      const tableData = await sqlFetch(data);

      renderData(tableData, data.sql, resultPane, {
        nohtml: true,
        title: metric.table_name,
      });
    }
  }
  resultPane.classList.remove("loader");
}
