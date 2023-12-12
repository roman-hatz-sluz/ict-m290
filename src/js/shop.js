const sqlFormatter = require("sql-formatter");
import queryString from "query-string";
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
    sqlTextarea.value = formatSql(sqlTextarea.value);
  });
  sqlTextarea.addEventListener("change", () => {
    localStorage.setItem(storageItem, sqlTextarea.value);
  });

  if (localStorage.getItem(storageItem)) {
    sqlTextarea.value = localStorage.getItem(storageItem);
    sqlTextarea.value = formatSql(sqlTextarea.value);
  }
  onSqlSubmit(linkTo);
};

export const initHome = () => {
  initShopPage("sql_shopHome", "/shopMaincat");
};

export const initMaincat = () => {
  initShopPage("sql_shopMaincat", "/shopDetails");
  localStorage.setItem("mainCatLink", location.search);
};
export const initShopDetails = () => {
  const nav2 = document.getElementById("shop_nav_2");
  nav2.href += localStorage.getItem("mainCatLink");
  initShopPage("sql_shopDetails", "");
};

const parseSql = (sql) => {
  const getParams = queryString.parse(location.search);

  for (let key in getParams) {
    let value = getParams[key] || "";
    sql = replaceAllHelper(sql, `_${key}_`, value.toLowerCase());
  }

  return sql;
};

const replaceAllHelper = (target, search, replacement) => {
  return target.replace(new RegExp(search, "g"), replacement);
};

const onSqlSubmit = async (linkTo = "") => {
  let sql = sqlTextarea.value;
  if (!sql) {
    return false;
  }
  sql = parseSql(sql);
  const data = {
    group: localStorage.getItem("group"),
    sql: sql,
    pw: localStorage.getItem("pw"),
  };
  resultPane.innerHTML = "";
  resultPane.classList.add("loader");
  // show spinner min time
  submit.disabled = true;
  await new Promise((resolve) => {
    setTimeout(() => {
      resolve();
    }, 300);
  });

  const result = await sqlFetch(data);
  submit.disabled = false;

  if (result[1] && linkTo) {
    result[1] = addlinkToCol(result[1], linkTo);
  }
  resultPane.classList.remove("loader");
  renderData(result, sql, resultPane);
};

const formatSql = (sqlString) => {
  let result = "";
  try {
    result = sqlFormatter.format(sqlString, {
      tabWidth: 2,
      keywordCase: "upper",
      language: "mysql",
    });
  } catch (err) {
    result = sqlString;
    console.error(err);
  }
  return result;
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
