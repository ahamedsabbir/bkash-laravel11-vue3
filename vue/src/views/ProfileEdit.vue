<template>
    <div class="mt-5">
        <h2 class="mb-4">Edit Profile</h2>
        <form @submit.prevent="submitForm">
            <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" id="name" v-model="user.name">
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" v-model="user.email">
            </div>
            <div class="mb-3">
                <label for="profilePicture" class="form-label">Profile Picture</label>
                <input type="file" class="form-control" id="profilePicture" @change="handleFileUpload">
            </div>
            <button type="submit" class="btn btn-primary">Save Changes</button>
        </form>
    </div>
</template>

<script>
import axios from 'axios'

export default {
    name: 'Profile',
    inject: ["authStore"],
    data() {
        return {
            user: {},
            file: {}
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
        },
        async handleFileUpload(e) {
            try {
                this.file.image = e.target.files[0]
                this.file.id = authStore.userid
                axios.defaults.baseURL = 'http://localhost/bkash/laravel/public/api'
                const token = localStorage.getItem('token');
                axios.defaults.headers.common['Authorization'] = `Bearer ${token}`;
                const response = await axios.post('/profile/image', this.file, {
                    headers: {
                        'Content-Type': 'multipart/form-data'
                    }
                });
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
