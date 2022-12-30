import "./main.scss";
// import "app/views/flats/multiselect.js";
// import "app/views/flats/carousel.js";
import "../../views/flats/carousel";
import "../../views/flats/multiselect";
import "../../views/flats/scroll_up";
// import "/home/john/code/Bootscum/Compas_BnB-vue/app/views/flats/scroll_up.js";

import { createApp } from "vue";
import Home from "../components/views/Home.vue";
import "tw-elements";

if (document.querySelector("#home")) {
  const home = createApp(Home);
  home.mount("#home");
}
