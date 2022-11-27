import renderData from "./sql-renderer";
import { sqlFetch } from "./helpers";
let groupValue = null;
let resultPane;
let sqlTextarea;

export const initHome = () => {
  groupValue = document.body.getAttribute("data-group");
  let shopName = document.body.getAttribute("data-name") || "";
  let html = `"${shopName}: Start Page`;
  const submit = document.getElementById("submit");
  sqlTextarea = document.getElementById("sql");
  resultPane = document.getElementById("result");
  if (groupValue === "teacher") {
    html = `Inline-Skates: Start Page`;
  }

  document.getElementById("header").innerHTML = html;

  submit.addEventListener("click", () => {
    onSqlSubmit();
  });
  sqlTextarea.addEventListener("change", () => {
    localStorage.setItem("sql_shopHome", sqlTextarea.value);
  });

  if (localStorage.getItem("sql_shopHome")) {
    sqlTextarea.value = localStorage.getItem("sql_shopHome");
  }
  onSqlSubmit();
};

export const initMaincat = () => {};

const onSqlSubmit = async () => {
  let sql = sqlTextarea.value;
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

  renderData(result, sql, resultPane);
};
