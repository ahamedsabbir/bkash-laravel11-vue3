<template>
  <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="card">
          <div class="card-header">Login</div>
          <div class="card-body">
            <form @submit.prevent="handleSubmit">
              <div class="mb-3">
                <label for="email" class="form-label">Email address</label>
                <input type="email" class="form-control" id="email" v-model="form.email" required>
              </div>
              <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" v-model="form.password" required>
              </div>
              <button type="submit" class="btn btn-primary">Login</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios'
import { authStore } from '../store/authStore.js'

export default {
  data() {
    return {
      form: {
        email: '',
        password: ''
      },
      auth: {
        token: '',
        userid: 0,
        username: '',
        useremail: '',
        userrole: '',
        userbalance: 0,
        userimage: '',
        userauth: false
      }
    }
  },
  methods: {
    async handleSubmit() {
      try {
        axios.defaults.baseURL = 'http://localhost/bkash/laravel/public/api'
        const response = await axios.post('/login', this.form)
        this.auth.token = response.data.token;
        this.auth.userid = response.data.user.id;
        this.auth.username = response.data.user.name;
        this.auth.useremail = response.data.user.email;
        this.auth.userrole = response.data.user.role;
        this.auth.userbalance = response.data.user.balance;
        this.auth.userimage = response.data.user.image;
        this.auth.userauth = true;
        authStore.setAuth(this.auth)
        //alert(response.data.message || 'Student added successfully');
        //alert(response.data.token)
        this.$router.push('/');
      } catch (error) {
        alert(error.response.data.message || 'Error adding student')
        console.error('Error fetching data:', error)
      }
    }
  }
}
</script>