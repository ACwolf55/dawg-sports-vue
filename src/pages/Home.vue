<script>
export default {
    name:"Home",
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
  { player: "Josh Allen", playerPic: "https://www.usatoday.com/gcdn/authoring/authoring-images/2024/09/25/USAT/75376874007-usatsi-24310119.jpg?crop=2711,1525,x819,y179&width=660&height=371&format=pjpg&auto=webp", logoPic: "/team_logos/bills.png", position: "QB", team: "Buffalo Bills", info: "Josh Allen is a dawg etc etc" },
  { player: "Patrick Mahomes", playerPic: "https://media.pff.com/2021/08/USATSI_16597050_168395514_lowres.jpg?w=1200&h=675", logoPic: "/team_logos/chiefs.png", position: "QB", team: "Kansas City Chiefs", info: "yeh hes good and wat wat" },
  { player: "Justin Jefferson", playerPic: "https://static.www.nfl.com/image/private/t_editorial_landscape_12_desktop/league/fsidtsfmr9qudx0upk91", logoPic: "/team_logos/vikings.png", position: "WR", team: "Minnesota Vikings", info: "He just a ball player, like bro revived Sam Darnolds career fr" },
  { player: "Myles Garrett", playerPic: "https://image.discovery.indazn.com/ca/v2/ca/image?id=1nso7oqplln8t1qntiea6ehy81_image-header_pRow_1727278939000", logoPic: "/team_logos/browns.png", position: "DE", team: "Cleveland Browns", info: "Last dude you want coming at u in da trenches" },
  { player: "Derrick Henry", playerPic: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSR7hAKYqvLtz6WvxjxVYzsMcPVtZU_6rd5w&s", logoPic: "/team_logos/titans.png", position: "RB", team: "Tennessee Titans", info: "Hes getting used to the team now oof" },
  { player: "Micah Parsons", playerPic: "https://media.bleacherreport.com/image/upload/c_fill,g_faces,w_3800,h_2000,q_95/v1662141588/hthhezgui4mygowztkoq.jpg", logoPic: "/team_logos/cowboys.png", position: "DE", team: "Dallas Cowboys", info: "" },
  { player: "Amon-Ra St. Brown", playerPic: "https://www.fanduel.com/research/theduel/images/duel/01gap2sfh7490sqb2qqj.jpg", logoPic: "/team_logos/lions.png", position: "WR", team: "Detroit Lions", info: "Dis dude dawg all the way reminds of a steve smith kina" },
  { player: "Saquon Barkley", playerPic: "https://i.ytimg.com/vi/0XUpVSMO984/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLA5IAC-CHGn2Hb4hpBjGpTqN-MHUg", logoPic: "/team_logos/eagles.png", position: "RB", team: "Philadelphia Eagles", info: "HE LOOKS HUNGRY ID FEED HIM ALITTE MOAR" },
  { player: "Alvin Kamara", playerPic: "https://static.www.nfl.com/image/private/t_editorial_landscape_12_desktop/league/hngbcfgwvx6zpjgulbuc", logoPic: "/team_logos/saints.png", position: "RB", team: "New Orleans Saints", info: "Proabaly best balance in the league like that him and saints having a nice resurgence" },
  { player: "Lamar Jackson", playerPic: "https://i.ytimg.com/vi/7rsqxe-fdnk/sddefault.jpg", logoPic: "/team_logos/ravens.png", position: "QB", team: "Baltimore Ravens", info: "Baller Baller fun to watch, honestly think he should run more" }
],
dawgWatch: [
  { player: "Kalil Shakir", playerPic: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1uJG83jdZ7VfjrSbAYKvBx3uY4P-F8XqISA&s", logoPic: "/team_logos/bills.png", position: "WR", team: "Buffalo Bills", info: "Dude's straight dawg, attacks the YAC, about to break record for most targets to catches in a row" },
  { player: "Jayden Daniels", playerPic: "https://images2.minutemediacdn.com/image/upload/c_crop,w_5400,h_3037,x_0,y_267/c_fill,w_720,ar_16:9,f_auto,q_auto,g_auto/images/ImagnImages/mmsport/si/01j8n6ngrrxdnzprpy38.jpg", logoPic: "/team_logos/commanders.png", position: "QB", team: "Washington Commanders", info: "He looks DEce" },
  { player: "Marvin Harrison Jr.", playerPic: "https://static.clubs.nfl.com/image/upload/t_editorial_landscape_mobile/cardinals/gktrxmv6jpk2hwbcbpds.jpg", logoPic: "/team_logos/cardinals.png", position: "WR", team: "Arizona Cardinals", info: "Hes already looking good, that back of the endzone catch still got me shook fr" },
  { player: "Malik Nabors", playerPic: "https://images2.minutemediacdn.com/image/upload/c_crop,w_5597,h_3148,x_0,y_47/c_fill,w_720,ar_16:9,f_auto,q_auto,g_auto/images/ImagnImages/mmsport/210/01j8dqmcskesxxze3d1j.jpg", logoPic: "/team_logos/giants.png", position: "WR", team: "New York Giants", info: "He Legit has the most fantasy points right now, actually crazy" },
  { player: "Derek Carr", playerPic: "https://images2.minutemediacdn.com/image/upload/c_crop,w_2913,h_1638,x_0,y_57/c_fill,w_720,ar_16:9,f_auto,q_auto,g_auto/images/ImagnImages/mmsport/si/01j7w1sddvfj2ttrka5m.jpg", logoPic: "/team_logos/saints.png", position: "QB", team: "New Orleans Saints", info: "Think he found the right system" },
  { player: "Devon Achane", playerPic: "https://d18d41pmnj8qe1.cloudfront.net/source/2020/Devon_Achane.jpg", logoPic: "/team_logos/dolphins.png", position: "RB", team: "Miami Dolphins", info: "Think once the Fins get back on track he tear it up even more" },
  { player: "Sam Darnold", playerPic: "https://townsquare.media/site/164/files/2024/09/attachment-GettyImages-2173768015.jpg?w=780&q=75", logoPic: "/team_logos/vikings.png", position: "QB", team: "Minnesota Vikings", info: "Think all bro needed was a little justin jeffereson" },
  { player: "Baker Mayfield", playerPic: "https://media.pff.com/2023/09/2RWGWCN-scaled.jpg?w=1200&h=675", logoPic: "/team_logos/buccaneers.png", position: "QB", team: "Tampa Bay Buccaneers", info: "Already is a complete dawg just wanna PUT YAL ON WATCH" },
  { player: "Rashee Rice", playerPic: "https://i.ytimg.com/vi/Xb_yEfDjDh4/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCul77DZ0hLV5uHKqB0ElWsLufvdg", logoPic: "/team_logos/chiefs.png", position: "WR", team: "Kansas City Chiefs", info: "Hes been doing really good on my fantasy team and didnt think bro was like that but bro might be like that" },
  { player: "Quentin Johnston", playerPic: "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA1qT7jw.img?w=560&h=248&m=6", logoPic: "/team_logos/chargers.png", position: "WR", team: "Los Angeles Chargers", info: "Literally seen no tape or highlights(my b) but his stats and hype got me on notice" }
]
    };
  },
};
</script>

<template>

<div class=" flex flex-col w-full ">
    
    <header class="bg-purple-600 text-white h-32 md:h-40 flex flex-col items-center justify-between px-4 py-2">
  
  <RouterLink><div class="flex items-center space-x-4">
  <h1 class="text-3xl md:text-5xl font-bold text-neon-green animate-pulse">DAWG SPORTS</h1>
    <img id="arK9" src="https://i.redd.it/rg6vluviqrk61.png" alt="ArK9" class="w-12 h-12 md:w-16 md:h-16 object-contain" />
    <img id="football" src="/football.png" alt="Football" class="w-12 h-12 md:w-16 md:h-16 object-contain animate-bounce" />
  </div></RouterLink>


  <nav class="flex flex-col md:flex-row w-full md:w-2/3 bg-gradient-to-r from-purple-500 via-purple-600 to-purple-700 rounded-lg p-2 justify-around">
    <RouterLink to="/NFLRankings"><h4 class="title-link flex-1 flex items-center justify-center">
      <img id="nfl-logo" src="/nfl_logo.png" class="w-8 h-8 md:w-12 md:h-12 mr-2">NFL Player Rankings
    </h4></RouterLink>
   <h4 class="title-link flex-1 flex items-center justify-center">
      <img id='nba-logo' src='https://cdn.freebiesupply.com/images/large/2x/nba-logo-transparent.png' class="w-8 h-8 md:w-12 md:h-12 mr-2">NBA Player Rankings
    </h4>
    <h4 class="title-link flex-1 text-center">Place your ad here! -$50 a week-</h4>
  </nav>
</header>


    
    <main class="flex flex-col sm:flex-row space-x-0 sm:space-x-4 p-4 h-auto sm:h-[375vh]">
  <section class="w-full sm:w-1/3 bg-gray-600 p-4 rounded-lg shadow-lg mb-4 sm:mb-0 sm:h-[90%]">
    <h3 class="text-2xl font-bold text-white mb-14 text-center">NFL Power Rankings</h3>
    <div v-for="(team, index) in nflRankings" :key="index" class="flex items-center mb-12">
      <h4 class="text-white font-extrabold text-6xl mr-4" style="font-family: Impact, sans-serif;">{{ index + 1 }}.</h4>
      <div class="flex items-center space-x-4">
        <img :src="team.pic" alt="team logo" class="w-16 h-16 object-cover" />
        <h4 class="text-white font-semibold text-xl ">{{ team.team }}</h4>
      </div>
    </div>
  </section>

 <!-- Top Dawgs (Middle Column) -->
<section class="w-full sm:w-1/3 bg-gray-600 p-4 rounded-lg shadow-lg mb-4 sm:mb-0 sm:h-[90%]">
  <h3 class="text-2xl font-bold text-white mb-8 text-center">Top Dawgs</h3>
  <div v-for="(player, index) in topDawgs" :key="index" class="bg-gray-200 p-4 rounded-lg shadow-md mb-4">
    <!-- For mobile: flex-col layout, for larger screens: flex-row layout -->
    <div class="flex flex-col sm:flex-row items-center sm:items-start">
      <!-- Player Image -->
      <img :src="player.playerPic" alt="player image" class="w-32 h-24 object-cover rounded-lg relative z-10 mr-0 sm:mr-4 mb-4 sm:mb-0 gradient-border" />
      <!-- Player Info -->
      <div class="text-center sm:text-left">
        <!-- Player Name and Position -->
        <h4 class="text-lg font-bold text-gray-800">
          {{ player.player }} 
        </h4>
        <span class="font-normal text-gray-600">- {{ player.position }}</span>
        <!-- Team Logo and Name (inline on mobile and sm) -->
        <div class="flex justify-center sm:justify-start items-center mt-2">
          <img :src="player.logoPic" alt="team logo" class="w-9 h-9 object-contain mr-2">
          <p class="text-gray-700">{{ player.team }}</p>
        </div>
        <!-- Player Description -->
        <p class="mt-2">{{ player.info }}</p>
      </div>
    </div>
  </div>
</section>

<!-- Dawg Watch Section -->
<section class="w-full sm:w-1/3 bg-gray-600 p-4 rounded-lg shadow-lg sm:h-[90%]">
  <h3 class="text-2xl font-bold text-white mb-8 text-center">Dawg Watch</h3>
  <div v-for="(player, index) in dawgWatch" :key="index" class="bg-gray-200 p-4 rounded-lg shadow-md mb-4">
    <div class="flex flex-col sm:flex-row items-center sm:items-start">
      <!-- Player Image -->
      <img :src="player.playerPic" alt="player image" class="w-32 h-24 object-cover rounded-lg relative z-10 mr-0 sm:mr-4 mb-4 sm:mb-0 gradient-border" />
      <!-- Player Info -->
      <div class="text-center sm:text-left">
        <!-- Player Name and Position -->
        <h4 class="text-lg font-bold text-gray-800">
          {{ player.player }}
        </h4>
        <span class="text-gray-600 font-normal">- {{ player.position }}</span>
        <!-- Team Logo and Name (inline on mobile and sm) -->
        <div class="flex justify-center sm:justify-start items-center mt-2">
          <img :src="player.logoPic" alt="team logo" class="w-9 h-9 object-contain mr-2">
          <p class="text-gray-700">{{ player.team }}</p>
        </div>
        <!-- Player Description -->
        <p class="mt-2">{{ player.info }}</p>
      </div>
    </div>
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

 
