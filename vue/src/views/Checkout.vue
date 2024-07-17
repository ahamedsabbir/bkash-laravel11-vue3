<template>
  <div class="container mt-5">
    <h2 class="mb-4">Checkout</h2>
    <div class="row">
      <div class="col-md-8">
        <form @submit.prevent="submitOrder">
          <div class="mb-3">
            <label for="account" class="form-label">Account</label>
            <input type="account" class="form-control" id="account" :value="order.account" required readonly>
          </div>
          <div class="mb-3">
            <label for="email" class="form-label">Your Account Email</label>
            <input type="email" class="form-control" id="email" v-model="order.email" required>
          </div>
          <div class="mb-3">
            <label for="password" class="form-label">Your Account Password</label>
            <input type="password" class="form-control" id="password" v-model="order.password" required>
          </div>
          <button type="submit" class="btn btn-primary">Place Order</button>
        </form>
      </div>
      <div class="col-md-4">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Order Summary</h5>
            <ul class="list-group list-group-flush">
              <li class="list-group-item d-flex justify-content-between align-items-center">
                Price
                <span>{{ amount }} tk</span>
              </li>
              <li class="list-group-item d-flex justify-content-between align-items-center">
                Charge
                <span>{{ chargeCalculate }} tk</span>
              </li>
              <li class="list-group-item d-flex justify-content-between align-items-center">
                <strong>Total</strong>
                <strong>${{ totalPrice }} tk</strong>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios'
import { authStore } from '@/store/authStore';

export default {
  name: 'Checkout',
  data() {
    return {
      amount: Math.floor(this.$route.params.amount),
      order: {
        account: this.$route.params.email,
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
  },
  computed: {
    chargeCalculate() {
      return Math.floor(this.amount / 100 * 10)
    },
    totalPrice() {
      const total = Math.floor(this.amount + this.chargeCalculate)
      this.order.amount = total
      return total
    }
  }
}
</script>
