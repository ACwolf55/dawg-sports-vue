<script setup>
import { ref } from 'vue'

const count = ref(0)

// You might want to fetch this data from an API in a real application
const nflRankings = ref([
  { name: '49ers', logo: './pics/49ers.png' },
  { name: 'Ravens', logo: './pics/ravens.png' },
  { name: 'Bills', logo: './pics/bills.png' },
  { name: 'Lions', logo: './pics/lions.png' },
  { name: 'Chiefs', logo: './pics/chiefs.png' },
  { name: 'Texans', logo: './pics/texans.png' },
  { name: 'Dolphins', logo: './pics/dolphins.png' },
  { name: 'Cowboys', logo: './pics/cowboys.png' },
  { name: 'Packers', logo: './pics/packers.png' },
  { name: 'Rams', logo: './pics/rams.png' },
])

</script>

<template>
 <h1>Component Test</h1>
</template>
