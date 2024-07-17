<template>
    <div class="mt-4">
      <h2 class="mb-4 text-center">Your Transaction History</h2>
      <table class="table">
        <thead>
          <tr class="text-center table-dark">
            <th scope="col">Date</th>
            <th scope="col">Email</th>
            <th scope="col">TrxID</th>
            <th scope="col">Type</th>
            <th scope="col">Status</th>
            <th scope="col">Amount</th>
          </tr>
        </thead>
        <tbody>
          <tr class="text-center" v-for="history in histories" :key="history.id" :class="{ 'table-warning': history.type === 'expense' }">
            <td>{{  new Date(history.created_at).toLocaleDateString('en-US', { year: 'numeric', month: 'long', day: 'numeric', hour: 'numeric', minute: 'numeric', second: 'numeric' }) }}</td>
            <td>{{ history.email }}</td>
            <td>{{ history.trxid }}</td>
            <td>{{ history.type }}</td>
            <td>{{ history.status }}</td>
            <td>{{ history.amount }} tk</td>
          </tr>
        </tbody>
      </table>
    </div>
  </template>
  
  <script>
  import axios from 'axios'
  
  export default {
    name: 'Demo',
    inject: ["authStore"],
    data() {
      return {
        histories: {}
      }
    },
    methods: {
      async getHistory() {
        try {
          axios.defaults.baseURL = 'http://localhost/bkash/laravel/public/api'
          const token = localStorage.getItem('token');
          axios.defaults.headers.common['Authorization'] = `Bearer ${token}`;
          const response = await axios.get('/history/' + this.authStore.userid)
          this.histories = response.data.histories;
          console.log(response.data)
        } catch (error) {
          console.error('Error fetching data:', error)
        }
      }
    },
    mounted() {
      this.getHistory()
    }
  }
  </script>
  
  <style scoped>

  </style>