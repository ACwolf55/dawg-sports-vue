<script>

import { nbaPlayers } from "../data/nbaRankings";

export default {
  name: 'NBARankings',
  data() {
    return {
      message: 'Hello from MyComponent!',
      nbaPlayers
    };
  },
};
</script>

<template>
 <div class="min-h-screen bg-gradient-to-br from-[#283B7C] to-[#9333EA] flex flex-col justify-center items-center pt-5 pb-10">
  <h2 class="text-white text-4xl font-bold mb-6 underline">NBA Player Rankings</h2>
  <ol class="list-decimal list-inside text-white text-lg">
    <li v-for="(player,index) in nbaPlayers" :key="index" class="font-bold">
      {{ player }}
    </li>
  </ol>
</div>

</template>
