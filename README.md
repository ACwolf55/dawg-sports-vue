# DAWG Sports

NBA & NFL rankings, takes, and sports content with personality — a meme-y but legit sports site, built with Vue 3.

> **Live:** [dawgsports.xyz](https://www.dawgsports.xyz/) (also [dawg-sports-vue.vercel.app](https://dawg-sports-vue.vercel.app))

## What it does

Multi-page Vue 3 site with brand voice:

- **Home** — landing page with brand + calls to action
- **NBA Rankings** — power rankings with takes
- **NFL Rankings** — power rankings with takes
- **About / Our Story / Careers / Contact / Get Ad** — supporting pages
- Aimed at sports fans who want personality, not generic ESPN-style copy

## Tech Stack

| Layer | Tech |
|---|---|
| Framework | Vue 3 (Composition API, `<script setup>`) |
| Routing | Vue Router 4 |
| Build | Vite 5 |
| Styling | Tailwind CSS 3 |
| Data | Currently static (TS files in `src/data/`) |
| Hosting | Vercel + custom domain |

## Project Structure

```
src/
├── pages/        # route components (Home, NBARankings, NFLRankings, ...)
├── components/   
├── data/         # static rankings data (nbaRankings.ts, nflRankings.ts)
├── router.js     # Vue Router config
├── App.vue       # root
└── main.js       # entry
```

## Getting Started

```bash
npm install
npm run dev      # Vite dev server
npm run build    # production build
npm run preview  # preview production build
```

## Roadmap

- [ ] update photos / images and current rankings for NFL & NBA
- [ ] Migrate to **Nuxt 3** for SSR (better SEO + Open Graph for shared posts)
- [ ] Add real backend pulling from a sports API (TheSportsDB / sportsdata.io)
- [ ] CMS for the "takes" / posts so I can author from a dashboard
- [ ] Rankings as living data instead of hand-edited TS files
- [ ] Image optimization + lazy loading
- [ ] Mobile-responsive polish pass

## What I Learned

- Vue 3 Composition API and `<script setup>` SFCs
- Vue Router with file-based-style page organization
- Tailwind utility classes inside Vue templates
- Vite's HMR workflow vs Webpack-based React tooling
- Designing a static-first site that's set up to grow into a backend-powered one
