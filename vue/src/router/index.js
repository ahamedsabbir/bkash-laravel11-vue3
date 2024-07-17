import { createRouter, createWebHistory } from 'vue-router';
import Home from '../views/Home.vue';
import Login from '../views/Login.vue';
import Register from '../views/Register.vue';
import Profile from '../views/Profile.vue';
import History from '@/views/History.vue';
import Demo from '@/views/Demo.vue';
import Checkout from '@/views/Checkout.vue';
import TransferMoney from '@/views/TransferMoney.vue';
import QrCode from '@/views/QrCode.vue';
import ProfileEdit from '@/views/ProfileEdit.vue';

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home
    },
    {
      path: '/login',
      name: 'login',
      component: Login
    },
    {
      path: '/register',
      name: 'register',
      component: Register
    },
    {
      path: '/profile',
      name: 'profile',
      component: Profile
    },
    {
      path: '/profile/edit/:id?',
      name: 'profile.edit',
      component: ProfileEdit
    },
    {
      path: '/history',
      name: 'history',
      component: History
    },
    {
      path: '/demo',
      name: 'demo',
      component: Demo
    },
    {
      path: '/checkout/:amount/:email',
      name: 'checkout',
      component: Checkout
    },
    {
      path: '/transfer/money/:email?',
      name: 'transfer.money',
      component: TransferMoney
    },
    {
      path: '/qrcode',
      name: 'qrcode',
      component: QrCode
    }
  ]
})

export default router
