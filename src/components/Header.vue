     <script>
import { RouterLink } from "vue-router";

export default {
  name: "Header",
};
</script>

  
  <template>
    
  <header
    class="bg-purple-600 text-white h-32 md:h-40 flex flex-col items-center justify-between px-4 py-2"
  >
    <RouterLink to="/">
      <div class="flex items-center space-x-4">
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
        />
      </div>
    </RouterLink>

    <nav
      class="flex flex-col md:flex-row w-full md:w-2/3 bg-gradient-to-r from-purple-500 via-purple-600 to-purple-700 rounded-lg p-2 justify-around items-center"
    >
      <RouterLink to="/NFLRankings">
        <h4 class="title-link flex-1 flex items-center justify-center">
          <img
            id="nfl-logo"
            src="/nfl_logo.png"
            class="w-8 h-8 md:w-12 md:h-12 mr-2"
          />NFL Player Rankings
        </h4>
      </RouterLink>
      <RouterLink to="/NBARankings">
        <h4 class="title-link flex-1 flex items-center justify-center">
          <img
            id="nba-logo"
            src="https://cdn.freebiesupply.com/images/large/2x/nba-logo-transparent.png"
            class="w-8 h-8 md:w-12 md:h-12 mr-2"
          />NBA Player Rankings
        </h4>
      </RouterLink>
      <RouterLink to="/GetAd">
        <h4 class="title-link flex-1 text-center">
          <i>*Place your ad here! $50 a week*</i>
        </h4>
      </RouterLink>
    </nav>
  </header>
</template>
  