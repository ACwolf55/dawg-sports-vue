<script>
import Header from "../components/Header.vue";

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
    <header
      class="bg-purple-600 text-white h-32 md:h-40 flex flex-col items-center justify-between px-4 py-2"
    >
      <RouterLink
        ><div class="flex items-center space-x-4">
          <h1
            class="text-3xl md:text-5xl font-bold text-neon-green animate-pulse font-bungee"
          >
            DAWG SPORTS
          </h1>
          <img
            id="arK9"
            src="https://i.redd.it/rg6vluviqrk61.png"
            alt="ArK9"
            class="w-12 h-12 md:w-16 md:h-16 object-contain"
          />
          <img
            id="football"
            src="/football.png"
            alt="Football"
            class="w-12 h-12 md:w-16 md:h-16 object-contain animate-bounce"
          /></div
      ></RouterLink>

      <nav
        class="flex flex-col md:flex-row w-full md:w-2/3 bg-gradient-to-r from-purple-500 via-purple-600 to-purple-700 rounded-lg p-2 justify-around items-center"
      >
        <RouterLink to="/NFLRankings"
          ><h4 class="title-link flex-1 flex items-center justify-center">
            <img
              id="nfl-logo"
              src="/nfl_logo.png"
              class="w-8 h-8 md:w-12 md:h-12 mr-2"
            />NFL Player Rankings
          </h4></RouterLink
        >
        <RouterLink to="/NBARankings"
          ><h4 class="title-link flex-1 flex items-center justify-center">
            <img
              id="nba-logo"
              src="https://cdn.freebiesupply.com/images/large/2x/nba-logo-transparent.png"
              class="w-8 h-8 md:w-12 md:h-12 mr-2"
            />NBA Player Rankings
          </h4></RouterLink
        >
        <RouterLink to="/GetAd"
          ><h4 class="title-link flex-1 text-center">
            <i>*Place your ad here! $50 a week*</i>
          </h4></RouterLink
        >
      </nav>
    </header>

    <main
      class="flex flex-col sm:flex-row space-x-0 sm:space-x-4 p-4 h-auto sm:h-[400vh]"
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
      <section
  class="w-full sm:w-[40%] bg-gray-600 p-5 rounded-lg shadow-lg mb-4 sm:mb-0 sm:h-[100%]"
>

        <h3
          class="text-2xl font-bold text-white mb-8 text-center font-ranchers"
        >
          Top Dawgs
        </h3>
        <div
          v-for="(player, index) in topDawgs"
          :key="index"
          class="bg-gray-200 p-4 rounded-lg shadow-md mb-4"
        >
          <div class="flex flex-col sm:flex-row items-center sm:items-start">
            <img
              :src="player.playerPic"
              alt="player image"
              class="w-32 h-24 object-cover rounded-lg relative z-10 mr-0 sm:mr-4 mb-4 sm:mb-0 gradient-border"
            />

            <div class="text-center sm:text-left">
              <h4 class="text-lg font-bold text-gray-800">
                {{ player.player }}
              </h4>
              <span class="font-normal text-gray-600">
                {{ player.position }}</span
              >

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

              <p class="mt-2">{{ player.info }}</p>
            </div>
          </div>
        </div>
      </section>

      <!-- Dawg Watch Section -->
      <section
  class="w-full sm:w-[40%] bg-gray-600 p-5 rounded-lg shadow-lg mb-4 sm:mb-0 sm:h-[100%]"
>

        <h3
          class="text-2xl font-bold text-white mb-8 text-center font-ranchers"
        >
          Dawg Watch
        </h3>
        <div
          v-for="(player, index) in dawgWatch"
          :key="index"
          class="bg-gray-200 p-4 rounded-lg shadow-md mb-4"
        >
          <div class="flex flex-col sm:flex-row items-center sm:items-start">
            <!-- Player Image -->
            <img
              :src="player.playerPic"
              alt="player image"
              class="w-32 h-24 object-cover rounded-lg relative z-10 mr-0 sm:mr-4 mb-4 sm:mb-0 gradient-border"
            />

            <div class="text-center sm:text-left">
              <h4 class="text-lg font-bold text-gray-800">
                {{ player.player }}
              </h4>
              <span class="text-gray-600 font-normal">
                {{ player.position }}</span
              >

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

              <p class="mt-2">{{ player.info }}</p>
            </div>
          </div>
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

 
