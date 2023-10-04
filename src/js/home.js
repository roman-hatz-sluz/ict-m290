import renderData from "./sql-renderer";
import { sqlFetch } from "./helpers";
let groupValue = null;
let resultPane;

export default function init() {
  groupValue = document.body.getAttribute("data-group");
  localStorage.setItem("group", groupValue);
  resultPane = document.getElementById("result");

  getData(document.body.getAttribute("data-group"));
}

async function getData() {
  // deactivate for now
  return false;
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
