<script>
import { RouterLink } from 'vue-router';

export default {
   inject: ["authStore"],
   methods: {
    logout() {
      localStorage.clear();
      this.authStore.userauth = false;
      this.authStore.username = 'Guest';
      this.$router.push('/login');
    }
   }
}
</script>

<template>
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">{{ $config.appName }}</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <router-link :class="{ active: $route.path === '/', 'nav-link': true }"
                                to="/">Home</router-link>
                        </li>
                        <li class="nav-item">
                            <router-link class="nav-link" to="/transfer/money" v-if="authStore.userauth">Transfer Money</router-link>
                        </li>
                        <li class="nav-item">
                            <router-link class="nav-link" to="/qrcode" v-if="authStore.userauth">QR Code</router-link>
                        </li>
                        <li class="nav-item">
                            <router-link class="nav-link" to="/demo" v-if="authStore.userauth">Demo</router-link>
                        </li>
                    </ul>
                    <ul class="navbar-nav mb-2 mb-lg-0 d-flex">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                                aria-expanded="false">
                                {{ authStore.username }}
                            </a>
                            <ul class="dropdown-menu">
                                <li><router-link class="dropdown-item" to="/login" v-if="!authStore.userauth">Login</router-link></li>
                                <li><router-link class="dropdown-item" to="/register" v-if="!authStore.userauth">Register</router-link></li>
                                <li><router-link class="dropdown-item" to="/profile" v-if="authStore.userauth">Profile</router-link></li>
                                <li><router-link class="dropdown-item" to="/history" v-if="authStore.userauth">History</router-link></li>
                                <li><a class="dropdown-item" @click="logout" v-if="authStore.userauth">Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</template>

<style scoped></style>