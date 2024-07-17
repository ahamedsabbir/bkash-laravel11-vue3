<template>
    <div class="container mt-5">
      <div class="row">
        <div class="col-md-8">
          <h2 class="mb-4">Money Transfer</h2>
          <form @submit.prevent="submitOrder">
            <div class="mb-3">
              <label for="account" class="form-label">Account</label>
              <input type="account" class="form-control" id="account" v-model="order.account" required >
            </div>
            <div class="mb-3">
              <label for="amount" class="form-label">Amount</label>
              <input type="number" class="form-control" id="amount" v-model="order.amount" required>
            </div>
            <div class="mb-3">
              <label for="email" class="form-label">Your Account Email</label>
              <input type="email" class="form-control" id="email" v-model="order.email" required>
            </div>
            <div class="mb-3">
              <label for="password" class="form-label">Your Account Password</label>
              <input type="password" class="form-control" id="password" v-model="order.password" required>
            </div>
            <button type="submit" class="btn btn-primary mb-3">Money Transfer</button>
          </form>
        </div>
        <div class="col-md-4">
          <div class="card mb-3">
            <div class="card-body">
              <h5 class="card-title">Importent Notice</h5>
              <p class="card-text"> Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            </div>
          </div>
          <div class="card mb-3">
            <div class="card-body">
              <h5 class="card-title">Importent Notice</h5>
              <p class="card-text"> Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            </div>
          </div>
          <div class="card mb-3">
            <div class="card-body">
              <h5 class="card-title">Importent Notice</h5>
              <p class="card-text"> Some quick example text to build on the card title and make up the bulk of the card's content.</p>
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
    name: 'Checkout',
    inject: ["authStore"],
    data() {
      return {
        order: {
          account: this.$route.params.email ? this.$route.params.email : '',
          amount: '',
          email: '',
          password: ''
        }
      }
    },
    methods: {
      async submitOrder() {
        try {
        axios.defaults.baseURL = 'http://localhost/bkash/laravel/public/api'
        const token = localStorage.getItem('token');
        axios.defaults.headers.common['Authorization'] = `Bearer ${token}`;
        const response = await axios.post('/transaction', this.order)
        console.log(response.data)
        alert(response.data.msg)
        this.$router.push('/history');
        } catch (error) {
          console.error('Error fetching data:', error)
        }
      }
    }
  }
  </script>
