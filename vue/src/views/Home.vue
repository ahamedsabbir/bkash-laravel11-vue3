<script>
import BsCarusal from '../components/BsCarusal.vue';
export default {
    components: {
        BsCarusal
    }
}
</script>

<template>
    <div>
        <bs-carusal></bs-carusal>
        <div class="row mt-5">
            <div class="col-md-8 p-lg-5 mx-auto my-5">
                <h1 class="display-3 fw-bold">Israt Ahamed Sabbir</h1>
                <h3 class="fw-normal text-muted mb-3">Build anything you want with Aperture</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti minima itaque debitis assumenda cum maiores eaque quis odit nemo modi, aut ducimus in vel obcaecati illo? Placeat animi quo eos!</p>
            </div>
            <div class="col-lg-4">
                <img class="img-fluid img-thumbnail float-end" src="/public/assets/img/ad.gif" alt="User Avatar" style="height: 400px;"/>
            </div>
            <div class="product-device shadow-sm d-none d-md-block"></div>
            <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
        </div>
    </div>
</template>

<style scoped></style>
