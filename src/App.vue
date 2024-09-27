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
  { player: "Josh Allen", playerPic: "", logoPic: "/team_logos/bills.png", position: "QB", team: "Buffalo Bills", info: "Josh Allen is a dawg etc etc" },
  { player: "Patrick Mahomes", playerPic: "", logoPic: "/team_logos/chiefs.png", position: "QB", team: "Kansas City Chiefs", info: "Patrick Mahomes is unstoppable" },
  { player: "Justin Jefferson", playerPic: "", logoPic: "/team_logos/vikings.png", position: "WR", team: "Minnesota Vikings", info: "Justin Jefferson is a highlight reel machine" },
  { player: "Myles Garrett", playerPic: "", logoPic: "/team_logos/browns.png", position: "DE", team: "Cleveland Browns", info: "Myles Garrett is a dominant force on defense" },
  { player: "Derrick Henry", playerPic: "", logoPic: "/team_logos/titans.png", position: "RB", team: "Tennessee Titans", info: "Derrick Henry runs over defenders" },
  { player: "Micah Parsons", playerPic: "", logoPic: "/team_logos/cowboys.png", position: "DE", team: "Dallas Cowboys", info: "" },
  { player: "Amon-Ra St. Brown", playerPic: "", logoPic: "/team_logos/lions.png", position: "WR", team: "Detroit Lions", info: "" },
  { player: "Saquon Barkley", playerPic: "", logoPic: "/team_logos/eagles.png", position: "RB", team: "Philadelphia Eagles", info: "" },
  { player: "Alvin Kamara", playerPic: "", logoPic: "/team_logos/saints.png", position: "RB", team: "New Orleans Saints", info: "" },
  { player: "Lamar Jackson", playerPic: "", logoPic: "/team_logos/ravens.png", position: "QB", team: "Baltimore Ravens", info: "Baller Baller" }
],
dawgWatch: [
  { player: "Kalil Shakir", playerPic: "", logoPic: "/team_logos/bills.png", position: "WR", team: "Buffalo Bills", info: "Dude's straight dawg, attacks the YAC, about to break record for most targets to catches in a row" },
  { player: "Jayden Daniels", playerPic: "", logoPic: "/team_logos/commanders.png", position: "QB", team: "Washington Commanders", info: "He looks DEce" },
  { player: "Marvin Harrison Jr.", playerPic: "", logoPic: "/team_logos/cardinals.png", position: "WR", team: "Arizona Cardinals", info: "A future Hall of Famer in the making" },
  { player: "Malik Neighbors", playerPic: "", logoPic: "/team_logos/giants.png", position: "WR", team: "New York Giants", info: "His route running is crisp and dangerous" },
  { player: "Derek Carr", playerPic: "", logoPic: "/team_logos/saints.png", position: "QB", team: "New Orleans Saints", info: "Carr’s leadership and deep ball are on display in New Orleans" },
  { player: "Devon Achane", playerPic: "", logoPic: "/team_logos/dolphins.png", position: "RB", team: "Miami Dolphins", info: "A speedster with quick cuts and elite agility" },
  { player: "Sam Darnold", playerPic: "", logoPic: "/team_logos/vikings.png", position: "QB", team: "Minnesota Vikings", info: "Looking for a fresh start with the Vikings" },
  { player: "Baker Mayfield", playerPic: "", logoPic: "/team_logos/buccaneers.png", position: "QB", team: "Tampa Bay Buccaneers", info: "Mayfield is fighting to prove he's still got it" },
  { player: "Rashee Rice", playerPic: "", logoPic: "/team_logos/chiefs.png", position: "WR", team: "Kansas City Chiefs", info: "An emerging weapon in Mahomes' arsenal" },
  { player: "Quentin Johnston", playerPic: "", logoPic: "/team_logos/chargers.png", position: "WR", team: "Los Angeles Chargers", info: "A big-bodied deep threat for the Chargers" }
]
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
  <div v-for="(team, index) in nflRankings" :key="index" class="flex items-center mb-12">
    <h4 class="text-white font-extrabold text-6xl mr-4" style="font-family: Impact, sans-serif;">{{ index + 1 }}.</h4>
    <div class="flex items-center space-x-4">
      <img :src="team.pic" alt="team logo" class="w-16 h-16 object-cover" />
      <h4 class="text-white font-semibold text-xl ">{{ team.team }}</h4>
    </div>
  </div>
</section>


  <!-- Top Dawgs (Middle Column) -->
  <section class="w-1/3 bg-gray-600 p-4 rounded-lg shadow-lg h-[90%]">
  <h3 class="text-2xl font-bold text-white mb-4">Top Dawgs</h3>
  <div v-for="(player,index) in topDawgs" :key="index" class="bg-gray-200 p-4 rounded-lg shadow-md mb-4">
    <div class="flex items-center">
      <!-- Player Image -->
      <img :src="player.playerPic" alt="player image" class="w-16 h-16 object-cover rounded-full mr-4">
      <!-- Player Info -->
      <div>
        <h4 class="text-lg font-bold text-gray-800">
          {{ player.player }} 
          <span class="text-gray-600 font-normal">- {{ player.position }}</span>
        </h4>
        <div class="flex items-center">
          <!-- Team Logo and Name -->
          <img :src="player.logoPic" alt="team logo" class="w-8 h-8 object-contain mr-2">
          <p class="text-gray-700">{{ player.team }}</p>
        </div>
      </div>
    </div>
    <!-- Player Info -->
    <p class="text-gray-600 mt-2">{{ player.info || "This player is a rising star in the league." }}</p>
  </div>
</section>

<!-- Dawg Watch Section -->
<section class="w-1/3 bg-gray-600 p-4 rounded-lg shadow-lg h-[90%]">
  <h3 class="text-2xl font-bold text-white mb-4">Dawg Watch</h3>
  <div v-for="(player, index) in dawgWatch" :key="index" class="bg-gray-200 p-4 rounded-lg shadow-md mb-4">
    <div class="flex items-center">
      <!-- Player Image -->
      <img :src="player.playerPic" alt="player image" class="w-16 h-16 object-cover rounded-full mr-4">
      <!-- Player Info -->
      <div>
        <h4 class="text-lg font-bold text-gray-800">
          {{ player.player }}
          <span class="text-gray-600 font-normal">- {{ player.position }}</span>
        </h4>
        <div class="flex items-center">
          <!-- Team Logo and Name -->
          <img :src="player.logoPic" alt="team logo" class="w-8 h-8 object-contain mr-2">
          <p class="text-gray-700">{{ player.team }}</p>
        </div>
      </div>
    </div>
    <!-- Player Info -->
    <p class="text-gray-600 mt-2">{{ player.info || "This player is one to keep an eye on this season." }}</p>
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

 
