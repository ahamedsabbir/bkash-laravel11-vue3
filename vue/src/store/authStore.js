// src/authStore.js
import { reactive } from 'vue'

export const authStore = reactive({
  token: localStorage.getItem('token') || null,
  userid: localStorage.getItem('userid') || 0,
  username: localStorage.getItem('username') || 'Guest',
  useremail: localStorage.getItem('useremail') || 'g5uJt@example.com',
  userrole: localStorage.getItem('userrole') || 'guest',
  userbalance: localStorage.getItem('userbalance') || 0,
  userimage: localStorage.getItem('userimage') || 0,
  userauth: localStorage.getItem('userauth') || false,

  setAuth(data) {
    this.token = data.token
    this.userid = data.userid
    this.username = data.username
    this.useremail = data.useremail
    this.userrole = data.userrole
    this.userbalance = data.userbalance
    this.userimage = data.userimage
    this.userauth = data.userauth

    localStorage.setItem('token', data.token)
    localStorage.setItem('userid', data.userid)
    localStorage.setItem('username', data.username)
    localStorage.setItem('useremail', data.useremail)
    localStorage.setItem('userrole', data.userrole)
    localStorage.setItem('userbalance', data.userbalance)
    localStorage.setItem('userimage', data.userimage)
    localStorage.setItem('userauth', data.userauth)
  },
  clearAuth() {
    this.token = null
    this.userid = ''
    this.username = ''
    this.useremail = ''
    this.userrole = ''
    this.userbalance = 0
    this.userimage = ''
    this.userauth = false

    localStorage.removeItem('token')
    localStorage.removeItem('userid')
    localStorage.removeItem('username')
    localStorage.removeItem('useremail')
    localStorage.removeItem('userrole')
    localStorage.removeItem('userbalance')
    localStorage.removeItem('userimage')
    localStorage.removeItem('userauth')
  }
})