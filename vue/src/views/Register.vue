<template>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">Register</div>
                    <div class="card-body">
                        <form @submit.prevent="handleSubmit">
                            <div class="mb-3">
                                <label for="name" class="form-label">Name</label>
                                <input type="text" class="form-control" id="name" v-model="form.name" required>
                            </div>
                            <div class="mb-3">
                                <label for="email" class="form-label">Email address</label>
                                <input type="email" class="form-control" id="email" v-model="form.email" required>
                            </div>
                            <div class="mb-3">
                                <label for="type" class="form-label">Type</label>
                                <select class="form-select" id="type" v-model="form.type" required>
                                    <option>Select</option>
                                    <option value="current">Current</option>
                                    <option value="saving">Saving</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" class="form-control" id="password" v-model="form.password"
                                    required>
                            </div>
                            <div class="mb-3">
                                <label for="confirmPassword" class="form-label">Confirm Password</label>
                                <input type="password" class="form-control" id="confirmPassword"
                                    v-model="form.confirmPassword" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Register</button>
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
                name: '',
                email: '',
                password: '',
                type: '',
                confirmPassword: ''
            },
            auth: {
                token: '',
                userid: 0,
                username: '',
                useremail: '',
                userrole: '',
                userbalance: '',
                userauth: false
            }
        }
    },
    methods: {
        async handleSubmit() {
            try {
                axios.defaults.baseURL = 'http://localhost/bkash/laravel/public/api'
                const response = await axios.post('/register', this.form)
                this.auth.token = response.data.token;
                this.auth.userid = response.data.user.id;
                this.auth.username = response.data.user.name;
                this.auth.useremail = response.data.user.email;
                this.auth.userrole = response.data.user.role;
                this.auth.userbalance = response.data.user.balance;
                this.auth.userimage = response.data.user.image;
                this.auth.userauth = true;
                authStore.setAuth(this.auth)
                //alert(response.msg || 'Student added successfully')
                this.$router.push('/');
            } catch (error) {
                alert(error.response.data.message || 'Error adding student')
                console.error('Error fetching data:', error)
            }
        }
    }
}
</script>