<script>
export default {
  data() {
    return {
      nflRankings: [
  { team: "Buffalo Bills", pic: "/team_logos/bills.png" },           
  { team: "Kansas City Chiefss", pic: "/team_logos/chiefs.png" },        
  { team: "Minnesota Vikings", pic: "/team_logos/vikings.png" },       
  { team: "Detroit Lions", pic: "/team_logos/lions.png" },           
  { team: "Philadelphia Eagles", pic: "/team_logos/eagles.png" },        
  { team: "Baltimore Ravens", pic: "/team_logos/ravens.png" },         
  { team: "Houston Texans", pic: "/team_logos/texans.png" },         
  { team: "New Orlean Saints", pic: "/team_logos/saints.png" },       
  { team: "Seattle Seahawks", pic: "/team_logos/seahawks.png" }   ,   
  { team: "San Franciso 49ers", pic: "/team_logos/49ers.png" },       
],
      topDawgs: [
        { player: "Josh Allen", pic: "path/to/josh-allen.png", position: "QB", team: "Buffalo Bills", info: "Josh Allen is a dawg etc etc" },
        { player: "Patrick Mahomes", pic: "path/to/mahomes.png", position: "QB", team: "Kansas City Chiefs", info: "Patrick Mahomes is unstoppable" },
        // Add 8 more players
      ],
      dawgWatch: [
        { player: "Kalil Shakir", pic: "path/to/josh-allen.png", position: "WR", team: "Buffalo Bills", info: "dudes straight dwag, attacks the yac, about to break record for most targets to catches in a row " },
        { player: "Jayden Daniels", pic: "", position: "QB", team: "Washington Commanders", info: "He looks DEce" },
        // Add 8 more players
      ],
    };
  },
};
</script>

<template>

<div class=" flex flex-col bg-yellow-200 w-full ">
    <!-- Header -->
    <header class="bg-purple-600 text-white h-32 md:h-40 flex items-center justify-between px-4 py-2">
      <h1 class="text-3xl md:text-5xl font-bold text-neon-green animate-pulse">DAWG SPORTS</h1>
      <div class="flex items-center space-x-4">
        <img id="arK9" src="https://i.redd.it/rg6vluviqrk61.png" alt="ArK9" class="w-16 h-16 md:w-24 md:h-24 object-contain" />
        <img id="football" src="./pics/football.png" alt="Football" class="w-12 h-12 md:w-16 md:h-16 object-contain animate-bounce" />
      </div>
    </header>

    <!-- Main content -->
    <main class="flex space-x-4 p-4 h-[300vh]">
  <!-- NFL Power Rankings (Left Column) -->
  <section class="w-1/3 bg-gray-600 p-4 rounded-lg shadow-lg h-[90%]">
    <h3 class="text-2xl font-bold text-white mb-2">NFL Power Rankings</h3>
    <div v-for="(team,index) in nflRankings" :key="index" class="">
      <h4 class="text-white">{{ index+1 }}.</h4>
      <h4 class="text-white font-semibold">{{ team.team }}</h4>
      <img :src="team.pic" alt="team logo" class="w-16 h-16 object-cover">
      <br>
      </div>
  </section>

  <!-- Top Dawgs (Middle Column) -->
  <section class="w-1/3 bg-gray-600 p-4 rounded-lg shadow-lg h-[90%]">
    <h3 class="text-2xl font-bold text-white mb-2">Top Dawgs</h3>
    <div v-for="(player,index) in topDawgs" :key="index" class="">
        <h4 class="text-white">{{ player.player }} - {{ player.postion }}</h4>
        <img :src="player.pic" alt="player image" class="w-16 h-16 object-cover">
          <p class="text-white">{{ player.team }}</p>
          <p class="text-gray-300">{{ player.info }}</p>
    </div>
  </section>

  <!-- Dawg Watch (Right Column) -->
  <section class="w-1/3 bg-gray-600 p-4 rounded-lg shadow-lg h-[90%]">
    <h3 class="text-2xl font-bold text-white mb-2">Dawg Watch</h3>
    <div v-for="(player, index) in dawgWatch" :key="index" class="">
          <h4 class="text-white font-semibold">{{ player.player }} - {{ player.position }}</h4>
          <img :src="player.pic" alt="player image" class="w-16 h-16 object-cover">
          <p class="text-white">{{ player.team }}</p>
          <p class="text-gray-300">{{ player.info }}</p>
        </div>
  </section>
</main>


    <!-- Footer -->
    <footer class="bg-purple-600 text-white h-32 md:h-40 flex items-center justify-around">
      <h2 class="text-lg md:text-xl font-bold hover:text-neon-green cursor-pointer">Contact Us</h2>
      <h2 class="text-lg md:text-xl font-bold hover:text-neon-green cursor-pointer">Careers</h2>
      <a href="https://www.instagram.com/reel/Ciu0ituDoXg/?hl=en" class="text-lg md:text-xl font-bold hover:text-neon-green">
        Our Story :)
      </a>
    </footer>
  </div>
</template>

 
