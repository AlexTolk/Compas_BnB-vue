import "./main.scss";
import "/home/john/code/Bootscum/Compas_BnB-vue/app/views/flats/multiselect.js";
import "/home/john/code/Bootscum/Compas_BnB-vue/app/views/flats/carousel.js";
import "/home/john/code/Bootscum/Compas_BnB-vue/app/views/flats/scroll_up.js";

import { createApp } from "vue";
import Home from "../components/views/Home.vue";

if (document.querySelector("#home")) {
  const home = createApp(Home);
  home.mount("#home");
}
