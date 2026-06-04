

<script>
import Header from '../components/Header.vue'
export default {
  name: "Careers",
  components: { Header },
 
};
</script>

<template>
  <div class="flex flex-col min-h-screen bg-gradient-to-r from-purple-700 to-blue-500">
    <Header />
    <div class="container mx-auto p-8 flex-1">
      <h1 class="text-center text-4xl font-bold mb-8 text-white">Careers</h1>
      <div class="space-y-6 max-w-2xl mx-auto">

        <div class="bg-white p-6 rounded-lg shadow-md">
          <h2 class="text-2xl font-bold text-center mb-3 text-purple-700">Dawg Sponsor</h2>
          <p class="text-center text-gray-700 mb-3">
            The one who steps up to take the site to MVP status! Your support powers Dawg Sports to the next level,
            and you’ll be part of the pack’s core success team.
          </p>
          <p class="text-center font-bold text-red-600">Salary: -$1,000 per year</p>
        </div>

        <div class="bg-white p-6 rounded-lg shadow-md">
          <h2 class="text-2xl font-bold text-center mb-3 text-purple-700">Angel Backer</h2>
          <p class="text-center text-gray-700 mb-3">
            Someone swooping in like an angel to lift Dawg Sports to greatness! Your generosity will make waves,
            ensuring this dawg’s got wings to soar!
          </p>
          <p class="text-center font-bold text-red-600">Salary: -$5,000 per year</p>
        </div>

        <div class="bg-white p-6 rounded-lg shadow-md">
          <h2 class="text-2xl font-bold text-center mb-3 text-purple-700">Dawg MVP Funder</h2>
          <p class="text-center text-gray-700 mb-3">
            A next-level contributor that makes everything happen! You’re the driving force
            that boosts Dawg Sports into the hall of fame.
          </p>
          <p class="text-center font-bold text-red-600">Salary: -$10,000 per year</p>
        </div>

      </div>
    </div>
  </div>
</template>