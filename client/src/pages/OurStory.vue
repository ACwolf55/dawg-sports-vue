<script>
import Header from '../components/Header.vue'
export default {
  name: "OurStory",
  components: { Header },
};
</script>
<template>
  <div class="flex flex-col min-h-screen">
    <Header />
    <div class="flex justify-center items-center flex-1 bg-gradient-to-r from-purple-700 to-blue-500 p-6">
  <div class="w-full max-w-lg p-8 bg-white rounded-lg shadow-lg text-center">
    <h2 class="text-3xl font-bold text-purple-700 mb-4">About Us</h2>
    <p class="text-lg text-gray-700 font-medium">
      I'm a Bills fan and a web developer. On the football field, I'm known as 
      <span class="font-bold text-purple-600">AC TOTE DA ROCK</span>.
    </p>
    </div>
    </div>
  </div>
</template>

