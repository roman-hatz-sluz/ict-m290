import { createApp } from "vue"; // Importieren von Vue
import LoginComponent from "./LoginComponent.vue"; // Importieren Ihrer LoginComponent
import initHomePage from "./home.js";

import "purecss/build/pure-min.css";
import "purecss/build/grids-responsive-min.css";
import "../css/style.scss";

import {
  initHome as initShopHome,
  initMaincat as initShopMaincat,
  initShopDetails,
} from "./shop";

const app = createApp(LoginComponent);

document.addEventListener(
  "DOMContentLoaded",
  () => {
    app.mount("#app");
    const nav1 = document.getElementById("nav_1");
    const nav2 = document.getElementById("nav_2");

    const shop_nav_1 = document.getElementById("shop_nav_1");
    const shop_nav_2 = document.getElementById("shop_nav_2");
    const shop_nav_3 = document.getElementById("shop_nav_3");
    if (document.getElementById("login")) {
    } else if (document.getElementById("homepage")) {
      initHomePage();
      nav1.classList.add("nav-button-active");
    } else if (document.getElementById("shopHome")) {
      initShopHome();
      nav2.classList.add("nav-button-active");
      shop_nav_1.classList.add("nav-button-active");
    } else if (document.getElementById("shopMaincat")) {
      initShopMaincat();
      nav2.classList.add("nav-button-active");
      shop_nav_2.classList.add("nav-button-active");
    } else if (document.getElementById("shopDetails")) {
      initShopDetails();
      nav2.classList.add("nav-button-active");
      shop_nav_3.classList.add("nav-button-active");
    } else {
      console.error("invalid page");
    }
  },
  false
);
