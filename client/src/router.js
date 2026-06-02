// src/router.js
import { createRouter, createWebHistory } from 'vue-router';
import Home from './pages/Home.vue';
import NFLRankings from './pages/NFLRankings.vue'
import NBARankings from './pages/NBARankings.vue'
import GetAd from './pages/GetAd.vue'
import Careers from './pages/Careers.vue'
import ContactUs from './pages/ContactUs.vue'
import OurStory from './pages/OurStory.vue'



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
  {
    path: '/ContactUs',component: ContactUs,
  },
  {
    path: '/OurStory',component: OurStory,
  },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
