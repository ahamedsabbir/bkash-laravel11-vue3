<script>
import { RouterView } from 'vue-router';
import BsNav from './components/BsNav.vue';
import BsFooter from './components/BsFooter.vue';
import { authStore } from './store/authStore.js'

export default {
  name: 'App',
  provide() {
    return {
      authStore: authStore
    }
  },
  data() {
    return {
      ///
    }
  },
  components: {
    RouterView,
    BsNav,
    BsFooter
  },
  computed: {
    token() {
      return authStore.token
    },
    username() {
      return authStore.username
    },
    useremail() {
      return authStore.useremail
    },
    userrole() {
      return authStore.userrole
    },
    userauth() {
      return authStore.userauth
    }
  }
}
</script>

<template>
  <div id="maindiv">
    <bs-nav></bs-nav>
    <div class="container">
      <img class="img-fluid" src="/public/assets/img/adverising.gif" alt="User Avatar"
        style="height: 200px; width: 100%;" />
    </div>
    <div class="container">
      <RouterView />
    </div>
    <div class="container">
      <img class="img-fluid" src="/public/assets/img/advertising-10-14577.gif" alt="User Avatar"
        style="height: 300px; width: 100%;" />
    </div>
    <bs-footer></bs-footer>
  </div>
</template>


<style scoped>
#maindiv {
  background-color: beige;
}
</style>
