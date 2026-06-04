<script>
import axios from 'axios'
import Header from '../components/Header.vue'
const BASE_URL = import.meta.env.VITE_API_URL

export default {
  name: 'NBARankings',
  components: { Header },
  data() {
    return {
      nbaPlayers: []
    };
  },
  mounted() {
    axios.get(`${BASE_URL}/api/nba/players`).then((res) => {
      this.nbaPlayers = res.data
    })
  },
};
</script>

<template>
 <div class="min-h-screen bg-gradient-to-br from-[#283B7C] to-[#9333EA] flex flex-col justify-center items-center pt-5 pb-10">
  <Header />
  <h2 class="text-white text-4xl font-bold mb-6 underline">NBA Player Rankings</h2>
  <ol class="list-decimal list-inside text-white text-lg">
    <li v-for="(player, index) in nbaPlayers" :key="index" class="font-bold">
      {{ player.player }}
    </li>
  </ol>
</div>

</template>
