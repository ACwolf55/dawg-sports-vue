<script>

import Header from "@/components/Header.vue";


import { nflRankings, topDawgs, dawgWatch } from "../data/rankings";

export default {
  name: "Home",
  data() {
    return {
      dawgWatch,
      nflRankings,
      topDawgs,
    };
  },
};
</script>

<template>
  <div class="flex flex-col w-full">

    <header class="bg-purple-600 text-white flex flex-col items-center px-4 py-4 space-y-4">
  <!-- Logo and Title Section -->
  <div class="flex flex-col md:flex-row items-center justify-center space-y-4 md:space-y-0 md:space-x-4">
    <h1
      class="text-3xl md:text-5xl font-bold text-neon-green animate-pulse font-bungee text-center"
    >
      DAWG SPORTS
    </h1>
    <div class="flex items-center space-x-1 md:space-x-2">
    <img
      id="arK9"
      src="https://i.redd.it/rg6vluviqrk61.png"
      alt="ArK9"
      class="w-10 h-10 md:w-16 md:h-16 object-contain"
    />
    <img
      id="football"
      src="/football.png"
      alt="Football"
      class="w-10 h-10 md:w-16 md:h-16 object-contain animate-bounce"
    />
  </div>
  </div>

  <!-- Navigation Section -->
  <nav
    class="flex flex-col md:flex-row w-full md:w-2/3 bg-gradient-to-r from-purple-500 via-purple-600 to-purple-700 rounded-lg p-4 space-y-4 md:space-y-0 md:space-x-4 justify-around items-center"
  >
    <RouterLink to="/NFLRankings" class="flex items-center space-x-2">
      <img
        id="nfl-logo"
        src="/nfl_logo.png"
        alt="NFL Logo"
        class="w-6 h-6 md:w-8 md:h-8"
      />
      <h4 class="text-sm md:text-base font-medium">NFL Player Rankings</h4>
    </RouterLink>
    <RouterLink to="/NBARankings" class="flex items-center space-x-2">
      <img
        id="nba-logo"
        src="https://cdn.freebiesupply.com/images/large/2x/nba-logo-transparent.png"
        alt="NBA Logo"
        class="w-6 h-6 md:w-8 md:h-8"
      />
      <h4 class="text-sm md:text-base font-medium">NBA Player Rankings</h4>
    </RouterLink>
    <RouterLink to="/GetAd">
      <h4 class="text-sm md:text-base font-medium text-center italic">
        *Place your ad here! $50 a week*
      </h4>
    </RouterLink>
  </nav>
</header>

    <main
      class="flex flex-col sm:flex-row space-x-0 sm:space-x-4 p-4 h-auto sm:h-[540vh]"
    >
    <section
  class="w-full sm:w-[40%] bg-gray-600 p-5 rounded-lg shadow-lg mb-4 sm:mb-0 sm:h-[100%]"
>

        <h3
          class="text-2xl font-bold text-white mb-14 text-center font-ranchers"
        >
          NFL Power Rankings
        </h3>
        <div
          v-for="(team, index) in nflRankings"
          :key="index"
          class="flex items-center mb-12"
        >
          <h4
            class="text-white font-extrabold text-6xl mr-4"
            style="font-family: Impact, sans-serif"
          >
            {{ index + 1 }}.
          </h4>
          <div class="flex items-center space-x-4">
            <img
              :src="team.pic"
              alt="team logo"
              class="w-16 h-16 object-cover"
            />
            <h4 class="text-white font-semibold text-xl">{{ team.team }}</h4>
          </div>
        </div>



   <!-- Quote Box -->
   <div class="relative w-4/5 mx-auto mt-8">
  <svg viewBox="0 0 300 200" class="w-full h-auto">
    <path d="M20,0 H280 Q300,0 300,20 V150 Q300,170 280,170 H240 L220,200 L200,170 H20 Q0,170 0,150 V20 Q0,0 20,0 Z" 
          fill="#FDE68A" stroke="#F59E0B" stroke-width="2"/>
    <text x="150" y="30" text-anchor="middle" class="font-bold text-lg" fill="#92400E">Big Tone's Tone Setter</text>
    <foreignObject x="20" y="50" width="260" height="100">
      <p xmlns="http://www.w3.org/1999/xhtml" class="text-center italic text-gray-800">
        "I think the commanders are a <span class="font-bold">DARK</span> horse this year with Jayden"
      </p>
    </foreignObject>
  </svg>
</div>

      </section>

     <!-- Top Dawgs (Middle Column) -->
<section class="w-full sm:w-[40%] bg-gray-600 p-5 rounded-lg shadow-lg mb-4 sm:mb-0 sm:h-[100%]">
  <h3 class="text-2xl font-bold text-white mb-8 text-center font-ranchers">
    Top Dawgs
  </h3>

  <div v-for="(player, index) in topDawgs" :key="index" class="bg-gray-200 p-4 rounded-lg shadow-md mb-4">
    <!-- Top Section: Player Image & Info -->
    <div class="flex items-center mb-4">
      <img
        :src="player.playerPic"
        alt="player image"
        class="w-24 h-24 object-cover rounded-lg mr-4 gradient-border"
      />
      <div class="flex flex-col">
        <h4 class="text-lg font-bold text-gray-800">{{ player.player }} -  <span class="text-gray-600">{{ player.position }}</span> </h4>
        <div class="flex items-center mt-1">
          <img
            :src="player.logoPic"
            alt="team logo"
            class="w-9 h-9 object-contain mr-2"
          />
          <p class="text-gray-700">{{ player.team }}</p>
        </div>
    
      </div>
    </div>

    <!-- Lower Section: Player Info/Notes -->
    <p class="text-gray-700">{{ player.info }}</p>
  </div>
</section>

<!-- Dawg Watch Section -->
<section class="w-full sm:w-[40%] bg-gray-600 p-5 rounded-lg shadow-lg mb-4 sm:mb-0 sm:h-[100%]">
  <h3 class="text-2xl font-bold text-white mb-8 text-center font-ranchers">
    Dawg Watch
  </h3>

  <div v-for="(player, index) in dawgWatch" :key="index" class="bg-gray-200 p-4 rounded-lg shadow-md mb-4">
    <!-- Top Section: Player Image & Info -->
    <div class="flex items-center mb-4">
      <img
        :src="player.playerPic"
        alt="player image"
        class="w-24 h-24 object-cover rounded-lg mr-4 gradient-border"
      />
      <div class="flex flex-col">
        <h4 class="text-lg font-bold text-gray-800">{{ player.player }}- <span class="text-gray-600">{{ player.position }}</span></h4>
        <div class="flex items-center mt-1">
          <img
            :src="player.logoPic"
            alt="team logo"
            class="w-9 h-9 object-contain mr-2"
          />
          <p class="text-gray-700">{{ player.team }}</p>
        </div>

      </div>
    </div>

    <!-- Lower Section: Player Info/Notes -->
    <p class="text-gray-700">{{ player.info }}</p>
  </div>
</section>

    </main>

    <!-- Footer -->
    <footer
      class="bg-purple-600 text-white h-32 md:h-40 flex items-center justify-around"
    >
      <RouterLink to="/ContactUs"><h2
        class="text-lg md:text-xl font-bold hover:text-neon-green cursor-pointer"
      >
        Contact Us
      </h2></RouterLink>
      <RouterLink to="/Careers"><h2
        class="text-lg md:text-xl font-bold hover:text-neon-green cursor-pointer"
      >
        Careers
      </h2></RouterLink>
      <RouterLink to="/OurStory"><h2
        class="text-lg md:text-xl font-bold hover:text-neon-green cursor-pointer"
      >
        Our Story :)
      </h2></RouterLink>

        </footer>
  </div>
</template>

 
