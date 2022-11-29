const queryString = require("query-string");

import renderData from "./sql-renderer";
import { sqlFetch } from "./helpers";
let groupValue = null;
let resultPane;
let sqlTextarea;
let submit;

const initShopPage = (storageItem = "", linkTo = "") => {
  groupValue = document.body.getAttribute("data-group");
  sqlTextarea = document.getElementById("sql");
  resultPane = document.getElementById("result");
  submit = document.getElementById("submit");
  let shopName = document.body.getAttribute("data-name") || "";
  let html = `${shopName}: Start Page`;

  if (groupValue === "teacher") {
    html = `Inline-Skates: Start Page`;
  }

  document.getElementById("header").innerHTML = html;

  submit.addEventListener("click", () => {
    onSqlSubmit();
  });
  sqlTextarea.addEventListener("change", () => {
    localStorage.setItem(storageItem, sqlTextarea.value);
  });

  if (localStorage.getItem(storageItem)) {
    sqlTextarea.value = localStorage.getItem(storageItem);
  }
  onSqlSubmit(linkTo);
};

export const initHome = () => {
  initShopPage("sql_shopHome", "/shopMaincat");
};

export const initMaincat = () => {
  initShopPage("sql_shopMaincat", "/shopDetail");
};

const parseSql = (sql) => {
  const parsed = queryString.parse(location.search);

  for (let key in parsed) {
    sql = sql.replace(`$${key}`, parsed[key]);
  }

  return sql;
};

const onSqlSubmit = async (linkTo = "") => {
  let sql = parseSql(sqlTextarea.value);
  if (!sql) {
    sql = sqlTextarea.placeholder;
  }

  const data = {
    group: localStorage.getItem("group"),
    sql: sql,
    pw: localStorage.getItem("pw"),
  };
  submit.disabled = true;
  resultPane.innerHTML = "";

  const result = await sqlFetch(data);
  submit.disabled = false;

  if (result[1]) {
    result[1] = addlinkToCol(result[1], linkTo);
  }

  renderData(result, sql, resultPane);
};

const addlinkToCol = (data, link = "") => {
  data.forEach((element) => {
    let params = [];
    for (const [key, value] of Object.entries(element)) {
      params.push(`${encodeURI(key)}=${encodeURI(value)}`);
    }

    element["Link"] = ` ${link}?${params.join("&")} `;
  });
  return data;
};
