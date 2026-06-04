<script>
import Header from '../components/Header.vue'
export default {
  name: "GetAd",
  components: { Header },
  data() {
    return {
      reviews: [
        { name: "Totally Real Person", review: "I placed an ad on 'DAWG SPORTS', now my business profits are triple!", rating: 5 },
        { name: "Dr. Evil, Ph.D.", review: "Why make trillions.. when you can make, billions??..", rating: 4 },
        { name: "Jimmy Butler", review: "aint nobody placing an ad on dis wack *** ****", rating: 1 }
      ]
    };
  }
}
</script>

<template>
  <div class="flex flex-col min-h-screen bg-gradient-to-r from-purple-700 to-blue-500">
    <Header />
    <div class="max-w-3xl mx-auto p-8 w-full flex-1">
      <h2 class="text-3xl font-bold mb-2 text-center text-white">Place Your Ad on Dawg Sports</h2>
      <p class="text-center text-purple-200 mb-8">$50/week. Highly targeted audience of 3–4 people.</p>

      <div v-if="reviews.length" class="space-y-5">
        <h3 class="text-xl font-semibold text-white text-center mb-4 underline">
          Hear from <i>DAWG SPORTS</i> previous ad customers!
        </h3>
        <div v-for="(review, index) in reviews" :key="index" class="p-5 bg-white shadow-md rounded-lg">
          <div class="flex items-center justify-between mb-2">
            <strong class="text-lg font-bold text-purple-700">{{ review.name }}</strong>
            <span class="text-yellow-500 font-semibold">{{ '⭐'.repeat(review.rating) }}</span>
          </div>
          <p class="text-gray-600 italic">"{{ review.review }}"</p>
        </div>
      </div>
    </div>
  </div>
</template>
