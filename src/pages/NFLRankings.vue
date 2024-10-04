<script>
export default {
  name: "NFLRankings",
  data() {
    return {
      qbRankings: [
        {
          player: "Patrick Mahomes",
          logoPic: "/team_logos/chiefs.png",
          team: "Kansas City Chiefs",
        },
        {
          player: "Josh Allen",
          logoPic: "/team_logos/bills.png",
          team: "Buffalo Bills",
        },
        {
          player: "Lamar Jackson",
          logoPic: "/team_logos/ravens.png",
          team: "Baltimore Ravens",
        },
        {
          player: "CJ Stroud",
          logoPic: "/team_logos/texans.png",
          team: "Houston Texans",
        },
        {
          player: "Joe Burrow",
          logoPic: "/team_logos/bengals.png",
          team: "Cincinnati Bengals",
        },
        {
          player: "Baker Mayfield",
          logoPic: "/team_logos/buccaneers.png",
          team: "Tampa Bay Buccaneers",
        },
        {
          player: "Sam Darnold",
          logoPic: "/team_logos/vikings.png",
          team: "Minnesota Vikings",
        },
        {
          player: "Kirk Cousins",
          logoPic: "/team_logos/falcons.png",
          team: "Alanta Falcons",
        },
        {
          player: "Jayden Daniels",
          logoPic: "/team_logos/commanders.png",
          team: "Washington Commanders",
        },
        {
          player: "Matthew Stafford",
          logoPic: "/team_logos/rams.png",
          team: "Los Angeles Rams",
        },
      ],
      rbRankings: [
        {
          player: "Derrick Henry",
          logoPic: "/team_logos/ravens.png",
          team: "Baltimore Ravens",
        },
        {
          player: "Saquon Barkley",
          logoPic: "/team_logos/eagles.png",
          team: "Philadelphia Eagles",
        },
        {
          player: "Alvin Kamara",
          logoPic: "/team_logos/saints.png",
          team: "New Orleans Saints",
        },
        {
          player: "Kyren Williams",
          logoPic: "/team_logos/rams.png",
          team: "Los Angeles Rams",
        },
        {
          player: "David Montgomery",
          logoPic: "/team_logos/lions.png",
          team: "Detroit Lions",
        },
        {
          player: "James Cook",
          logoPic: "/team_logos/bills.png",
          team: "Buffalo Bills",
        },
        {
          player: "Kenneth Walker",
          logoPic: "/team_logos/seahawks.png",
          team: "Seattle Seahawks",
        },
        {
          player: "Bijan Robinson",
          logoPic: "/team_logos/falcons.png",
          team: "Atlanta Falcons",
        },
        {
          player: "Breece Hall",
          logoPic: "/team_logos/jets.png",
          team: "New York Jets",
        },
        {
          player: "Jonathan Taylor",
          logoPic: "/team_logos/colts.png",
          team: "Indianapolis Colts",
        },
      ],
      wrRankings: [
        {
          player: "Justin Jefferson",
          logoPic: "/team_logos/vikings.png",
          team: "Minnesota Vikings",
        },
        {
          player: "Amon-Ra St. Brown",
          logoPic: "/team_logos/lions.png",
          team: "Detroit Lions",
        },
        {
          player: "Tyreek Hill",
          logoPic: "/team_logos/dolphins.png",
          team: "Miami Dolphins",
        },
        {
          player: "CeeDee Lamb",
          logoPic: "/team_logos/cowboys.png",
          team: "Dallas Cowboys",
        },
        {
          player: "Mike Evans",
          logoPic: "/team_logos/buccaneers.png",
          team: "Tampa Bay Buccaneers",
        },
        {
          player: "Ja'Marr Chase",
          logoPic: "/team_logos/bengals.png",
          team: "Cincinnati Bengals",
        },
        {
          player: "Nico Collins",
          logoPic: "/team_logos/texans.png",
          team: "Houston Texans",
        },
        {
          player: "DK Metcalf",
          logoPic: "/team_logos/seahawks.png",
          team: "Seattle Seahawks",
        },
        {
          player: "Stefon Diggs",
          logoPic: "/team_logos/bills.png",
          team: "Buffalo Bills",
        },
        {
          player: "Malik Nabers",
          logoPic: "/team_logos/giants.png",
          team: "New York Giants",
        },
      ],
    };
  },
};
</script>

<template>
  <div class="flex flex-col w-full">
    
    <RouterLink to="/"><header
      class="bg-purple-600 text-white h-22 md:h-40 flex flex-col items-center justify-between px-4 py-2"
    >
      <div class="flex items-center space-x-4">
        <h1
          class="text-3xl md:text-5xl font-bold text-neon-green animate-pulse"
        >
          DAWG SPORTS
        </h1>
        <img
          id="arK9"
          src="https://i.redd.it/rg6vluviqrk61.png"
          alt="ArK9"
          class="w-12 h-8 md:w-16 md:h-16 object-contain"
        />
        <img
          id="football"
          src="/football.png"
          alt="Football"
          class="w-12 h-8 md:w-16 md:h-16 object-contain animate-bounce"
        />
      </div>
    </header></RouterLink>

    <!-- Main content -->
    <main
      class="flex flex-col sm:flex-row space-x-0 sm:space-x-4 p-4 h-auto sm:h-[375vh]"
    >
      <!-- NFL Power Rankings (Left Column) -->
      <section
        class="w-full sm:w-1/3 bg-gray-600 p-4 rounded-lg shadow-lg mb-4 sm:mb-0 sm:h-[90%]"
      >
      <h3 class="text-2xl font-bold text-white mb-8 text-center">
          QB Rankings
        </h3>
        <div
          v-for="(player, index) in qbRankings"
          :key="index"
          class="bg-gray-200 p-4 rounded-lg shadow-md mb-4"
        >
          <!-- For mobile: flex-col layout, for larger screens: flex-row layout -->
          <div class="flex flex-col sm:flex-row items-center sm:items-start">
            <h2 class="text-lg font-bold">{{ index+1 }}. {{ player.player }}  </h2>
    
              <div
                class="flex justify-center sm:justify-start items-center mt-2"
              >
                <img
                  :src="player.logoPic"
                  alt="team logo"
                  class="w-9 h-9 object-contain mr-2"
                />
                <p class="text-gray-700">{{ player.team }}</p>
              </div>
              <!-- Player Description -->
              <p class="mt-2">{{ player.info }}</p>
            
          </div>
        </div>
      </section>

      <!-- Top Dawgs (Middle Column) -->
      <section
        class="w-full sm:w-1/3 bg-gray-600 p-4 rounded-lg shadow-lg mb-4 sm:mb-0 sm:h-[90%]"
      >
        <h3 class="text-2xl font-bold text-white mb-8 text-center">
          RB Rankings
        </h3>
        <div
          v-for="(player, index) in rbRankings"
          :key="index"
          class="bg-gray-200 p-4 rounded-lg shadow-md mb-4"
        >
          <!-- For mobile: flex-col layout, for larger screens: flex-row layout -->
          <div class="flex flex-col sm:flex-row items-center sm:items-start">
            <h2 class="text-lg font-bold">{{ index+1 }}. {{ player.player }}  </h2>
    
              
              <!-- Team Logo and Name (inline on mobile and sm) -->
              <div
                class="flex justify-center sm:justify-start items-center mt-2"
              >
                <img
                  :src="player.logoPic"
                  alt="team logo"
                  class="w-9 h-9 object-contain mr-2"
                />
                <p class="text-gray-700">{{ player.team }}</p>
          
              <!-- Player Description -->
              <p class="mt-2">{{ player.info }}</p>
            </div>
          </div>
        </div>
      </section>

      <section
        class="w-full sm:w-1/3 bg-gray-600 p-4 rounded-lg shadow-lg sm:h-[90%]"
      >
      <h3 class="text-2xl font-bold text-white mb-8 text-center">
          WR Rankings
        </h3>
        <div
          v-for="(player, index) in wrRankings"
          :key="index"
          class="bg-gray-200 p-4 rounded-lg shadow-md mb-4"
        >
          <!-- For mobile: flex-col layout, for larger screens: flex-row layout -->
          <div class="flex flex-col sm:flex-row items-center sm:items-start">
            <h2 class="text-lg font-bold">{{ index+1 }}. {{ player.player }} </h2>
        
              <!-- Team Logo and Name (inline on mobile and sm) -->
              <div
                class="flex justify-center sm:justify-start items-center mt-2"
              >
                <img
                  :src="player.logoPic"
                  alt="team logo"
                  class="w-9 h-9 object-contain mr-2"
                />
                <p class="text-gray-700">{{ player.team }}</p>
              </div>
              <!-- Player Description -->
              <p class="mt-2">{{ player.info }}</p>
          </div>
        </div>
      </section>
    </main>

    <!-- Footer -->
    <footer
      class="bg-purple-600 text-white h-32 md:h-40 flex items-center justify-around"
    >
      <h2
        class="text-lg md:text-xl font-bold hover:text-neon-green cursor-pointer"
      >
        Contact Us
      </h2>
      <h2
        class="text-lg md:text-xl font-bold hover:text-neon-green cursor-pointer"
      >
        Careers
      </h2>
      <a
        href="https://www.instagram.com/reel/Ciu0ituDoXg/?hl=en"
        class="text-lg md:text-xl font-bold hover:text-neon-green"
      >
        Our Story :)
      </a>
    </footer>
  </div>
</template>
  
   
  