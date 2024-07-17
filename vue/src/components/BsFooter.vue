<template>
    <div class="mt-5">
        <footer class="footer mt-auto py-3 bg-light">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <h5>About Us</h5>
                        <p>A brief description of your company or website.</p>
                    </div>
                    <div class="col-md-4">
                        <h5>Quick Links</h5>
                        <ul class="list-unstyled">
                            <li><a href="#" class="text-decoration-none">Home</a></li>
                            <li><a href="#" class="text-decoration-none">Products</a></li>
                            <li><a href="#" class="text-decoration-none">Services</a></li>
                            <li><a href="#" class="text-decoration-none">Contact</a></li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <h5>Contact Us</h5>
                        <address>
                            123 Main St<br>
                            City, State 12345<br>
                            <a href="mailto:info@example.com" class="text-decoration-none">info@example.com</a>
                        </address>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-md-12 text-center">
                        <p class="mb-0">&copy; {{ new Date().getFullYear() }} Your Company Name. All rights reserved.
                        </p>
                    </div>
                </div>
            </div>
        </footer>
    </div>
</template>

<script>
export default {
    name: 'Footer'
}
</script>

<style scoped></style>