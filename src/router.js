// src/router.js
import { createRouter, createWebHistory } from 'vue-router';
import Home from './pages/Home.vue';
import NFLRankings from './pages/NFLRankings.vue'
import NBARankings from './pages/NBARankings.vue'
import GetAd from './pages/GetAd.vue'
import Careers from './pages/Careers.vue'



const routes = [
  {
    path: '/', component: Home,
  },
  {
    path: '/NFLRankings',component: NFLRankings,
  },
  {
    path: '/NBARankings',component: NBARankings,
  },
  {
    path: '/GetAd',component: GetAd,
  },
  {
    path: '/Careers',component: Careers,
  },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
