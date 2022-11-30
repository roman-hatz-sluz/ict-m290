const queryString = require("query-string");
const sqlFormatter = require("sql-formatter");
import renderData from "./sql-renderer";
import { sqlFetch } from "./helpers";

let resultPane;
let sqlTextarea;
let submit;
let format;

const initShopPage = (storageItem = "", linkTo = "") => {
  sqlTextarea = document.getElementById("sql");
  resultPane = document.getElementById("result");
  submit = document.getElementById("submit");
  format = document.getElementById("format");

  submit.addEventListener("click", () => {
    onSqlSubmit(linkTo);
  });
  format.addEventListener("click", () => {
    onSqlFormat();
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
  resultPane.classList.add("loader");
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
  resultPane.classList.remove("loader");
  renderData(result, sql, resultPane);
};
const onSqlFormat = () => {
  try {
    sqlTextarea.value = sqlFormatter.format(sqlTextarea.value, {
      tabWidth: 2,
      keywordCase: "upper",
      language: "mysql",
    });
  } catch (err) {
    console.error(err);
  }
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
