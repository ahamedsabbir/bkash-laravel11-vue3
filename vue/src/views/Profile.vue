<template>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-4 text-center">
                <img :src="user.userimage ? user.userimage : '/public/assets/img/profile.avif'"
                    alt="User Avatar" class="img-fluid rounded-circle" style="width: 150px; height: 150px;">
            </div>
            <div class="col-md-4">
                <h2>{{ user.name }}</h2>
                <p class="text-muted">{{ user.email }}</p>
                <div class="mb-3">
                    <strong>Role:</strong> {{ user.role }}
                </div>
                <div class="mb-3">
                    <strong>Type:</strong> {{ user.type }}
                </div>
                <div class="mb-3">
                    <strong>Balance:</strong> <span style="color: green; background-color: antiquewhite;">{{
                        user.balance }}</span> tk
                </div>
            </div>
            <div class="col-md-4">
                <h2>Profile</h2>
                <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                    ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in
                    voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                    proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            </div>
            <router-link class="btn btn-primary mt-3 mb-3" to="/profile/edit/">Edite Profile</router-link>
        </div>
    </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'Profile',
  inject: ["authStore"],
  data() {
    return {
      user: {}
    }
  },
  methods: {
    async getUser() {
      try {
        axios.defaults.baseURL = 'http://localhost/bkash/laravel/public/api'
        const token = localStorage.getItem('token');
        axios.defaults.headers.common['Authorization'] = `Bearer ${token}`;
        const response = await axios.get('/profile/' + this.authStore.userid)
        this.user = response.data.user;
        console.log(response.data)
      } catch (error) {
        console.error('Error fetching data:', error)
      }
    }
  },
  mounted() {
    this.getUser()
  }
}
</script>