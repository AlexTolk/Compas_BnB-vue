import "./main.scss";

import { createApp } from "vue";
import Home from "../components/views/Home.vue";
import "tw-elements";

if (document.querySelector("#home")) {
  const home = createApp(Home);
  home.mount("#home");
}
