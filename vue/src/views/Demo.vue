<template>
  <div class="mt-4">
    <h2 class="mb-4 text-center">Latest Posts</h2>
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
      <div v-for="product in products" :key="product.id" class="col">
        <div class="card h-100 shadow-sm">
          <img src="http://localhost/bkash/laravel/public/storage/img/image.jpg" class="card-img-top" alt="Post image">
          <div class="card-body">
            <h5 class="card-title">{{ product.name }}</h5>
            <p class="card-text">{{ product.price }}</p>
            <p class="card-text">{{ product.description }}</p>
          </div>
          <div class="card-footer bg-transparent border-top-0">
            <div class="d-flex justify-content-between align-items-center">
              <div class="btn-group">
                <button type="button" class="btn btn-sm btn-outline-warning" @click="buyNow(product.price, $config.email)">Buy
                  Now</button>
              </div>
              <small class="text-muted">{{ product.date }}</small>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'Demo',
  inject: ["authStore"],
  data() {
    return {
      products: {}
    }
  },
  methods: {
    async getStudents() {
      try {
        axios.defaults.baseURL = 'http://localhost/bkash/laravel/public/api'
        const token = localStorage.getItem('token');
        axios.defaults.headers.common['Authorization'] = `Bearer ${token}`;
        const response = await axios.get('/products')
        this.products = response.data.products;
        console.log(response.data)
      } catch (error) {
        console.error('Error fetching data:', error)
      }
    },
    buyNow(price, email) {
      const otherWebsiteLink = 'http://localhost:5173/checkout/' + price + '/' + email;
      window.open(otherWebsiteLink, '_blank');
    }
  },
  mounted() {
    this.getStudents()
  }
}
</script>

<style scoped>
.card-img-top {
  height: 200px;
  object-fit: cover;
}
</style>