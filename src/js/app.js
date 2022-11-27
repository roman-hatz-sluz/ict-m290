import "purecss/build/pure-min.css";
import "purecss/build/grids-responsive-min.css";
import "../css/style.scss";

import {
  initHome as initShopHome,
  initMaincat as initShopMaincat,
} from "./shop";
import initLogin from "./login.js";
import initHomePage from "./home.js";

import { getSearchParameters } from "./helpers.js";

document.addEventListener(
  "DOMContentLoaded",
  () => {
    const nav1 = document.getElementById("nav_1");
    const nav2 = document.getElementById("nav_2");
    const nav3 = document.getElementById("nav_3");
    if (document.getElementById("login")) {
      initLogin(getSearchParameters());
    } else if (document.getElementById("homepage")) {
      initHomePage();
      nav1.classList.add("nav-button-active");
    } else if (document.getElementById("shopHome")) {
      initShopHome();
      nav2.classList.add("nav-button-active");
    } else if (document.getElementById("shopMaincat")) {
      initShopMaincat();
    } /*
      else if (document.getElementById("page_csv")) {
      initCSV();
    } else if (document.getElementById("import")) {
      initImport();
    } else if (document.getElementById("homepage")) {
      initHomePage();
    } else if (document.getElementById("maincat")) {
      initMainCat(getSearchParameters());
    } else if (document.getElementById("produkt")) {
      initProdukt(getSearchParameters());*/ else {
      console.error("invalid page");
    }
  },
  false
);
