# Dawg Sports

NFL and NBA rankings with personality — a meme-y but legit sports site. Full-stack: Vue 3 frontend + Node/Express backend + PostgreSQL on Supabase.

> **Live:** [dawgsports.xyz](https://www.dawgsports.xyz)  
> **Frontend:** Vercel · **Backend:** Railway · **Database:** Supabase (PostgreSQL)

## Structure

```
dawg-sports-vue/
  client/   ← Vue 3 frontend (Vite + Tailwind)
  server/   ← Node/Express API (Sequelize + PostgreSQL)
```

## Tech Stack

| Layer | Tech |
|---|---|
| Frontend | Vue 3, Vue Router 4, Vite 5, Tailwind CSS 3 |
| Backend | Node.js, Express, Sequelize |
| Database | PostgreSQL (Supabase) |
| Hosting | Client → Vercel · Server → Railway |

## Pages

- **Home** — NFL Power Rankings, Top Dawgs, Dawg Watch (live from DB)
- **NFL Rankings** — QB, RB, WR rankings (live from DB)
- **NBA Rankings** — Top 20 players (live from DB)
- **Our Story / Careers / Contact / Get Ad** — supporting pages

## Getting Started

### Client
```bash
cd client
npm install
npm run dev       # runs on localhost:5173
```

### Server
```bash
cd server
npm install
npm run dev       # runs on localhost:4000
```

Add your Supabase connection string to `server/.env`:
```
DATABASE_URL=your_supabase_session_pooler_uri
```

Run `seed.sql` in Supabase SQL editor to create tables and load data.

## Environment Variables

Client uses Vite env variables for the API URL:
- `client/.env` — `VITE_API_URL=http://localhost:4000` (local)
- `client/.env.production` — `VITE_API_URL=https://dawg-sports-vue-production.up.railway.app` (deployed)

**Note:** Use the Supabase **session pooler** URI for `DATABASE_URL` (not the direct connection). Railway is IPv4-only — the direct Supabase host is IPv6 and will fail. Session pooler host looks like `aws-1-us-east-2.pooler.supabase.com` and is IPv4 compatible. Same fix as AWS Elastic Beanstalk.

## API Routes

| Method | Route | Description |
|---|---|---|
| GET | /api/nfl/rankings | NFL team standings |
| GET | /api/nfl/top-dawgs | Featured players |
| GET | /api/nfl/dawg-watch | Players to watch |
| GET | /api/nfl/qb-rankings | QB rankings |
| GET | /api/nfl/rb-rankings | RB rankings |
| GET | /api/nfl/wr-rankings | WR rankings |
| GET | /api/nba/players | NBA player rankings |

## To Do

- [ ] Add missing team logos (broncos, bears, steelers, panthers)
- [ ] Add player profile pic URLs to top_dawgs and dawg_watch rows in Supabase
- [ ] UI polish pass on NFL/NBA ranking pages
- [ ] Mobile responsive cleanup
- [ ] Add to portfolio at alexcrowe-dev.online with screenshot

## What I Built

- Full-stack Vue + Node/Express app with a real PostgreSQL database — fully deployed
- Monorepo structure: Vue client on Vercel, Express server on Railway, DB on Supabase
- Live data fetched from Supabase via Express API on page load (Vue `mounted()`)
- Environment-based API URL switching (`VITE_API_URL`) for local vs deployed
- Debugged IPv6/IPv4 routing issue — Railway is IPv4-only, Supabase direct host is IPv6. Fixed by switching to Supabase session pooler (same issue previously solved on AWS EB for the PKM project)
