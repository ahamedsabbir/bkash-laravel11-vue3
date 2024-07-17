import './assets/main.css'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap/dist/js/bootstrap.js'
import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import config from './config.js'; 

const app = createApp(App);

app.config.globalProperties.$config = config;

app.use(router).mount('#app')
