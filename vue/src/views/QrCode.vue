<template>
    <div class="qr-code-container">
      <h2>Money Transfer QR Code</h2>
      <p>Account Number: {{ authStore.useremail }}</p>
      <qrcode-vue :value="url" :size="size" level="H"></qrcode-vue>
    </div>
  </template>
  
  <script>
  import QrcodeVue from 'qrcode.vue'
  
  export default {
    name: 'QRCodeGenerator',
    inject: ["authStore"],
    components: {
      QrcodeVue
    },
    data() {
      return {
        url: 'http://localhost:5173/transfer/money/' + this.authStore.useremail,
        size: 300 // Size of the QR code in pixels
      }
    }
  }
  </script>
  
  <style scoped>
  .qr-code-container {
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-top: 2rem;
  }
  </style>