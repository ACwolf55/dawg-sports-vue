<script>
export default {
  name: "GetAd",
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

    <div class="max-w-4xl mx-auto p-6">
      <div v-if="reviews.length" class="space-y-6">
        <h2 class="text-2xl font-semibold mb-4 text-center"><u>Hear From <i>DAWG SPORTS</i> previous ad Customers!</u></h2>
        <ul class="space-y-6">
          <li v-for="(review, index) in reviews" :key="index" class="p-6 bg-white shadow-md rounded-lg">
            <div class="flex items-center justify-between mb-2">
              <strong class="text-lg font-bold">{{ review.name }}</strong> 
              <p class="text-yellow-500 text-lg">Rating: {{ review.rating }}/5</p>
            </div>
            <p class="text-gray-600 italic">"{{ review.review }}"</p>
          </li>
        </ul>
      </div>
      
      <div v-else class="text-center mt-8">
        <p class="text-gray-500 text-lg">No reviews yet.</p>
      </div>
    </div>
  </template>
