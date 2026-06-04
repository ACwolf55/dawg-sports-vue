# Dawg Sports

NFL and NBA rankings with personality — a meme-y but legit sports site. Full-stack: Vue 3 frontend + Node/Express backend + PostgreSQL on Supabase.

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
- `client/.env.production` — `VITE_API_URL=https://your-railway-url.com` (deployed)

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

- [ ] Add missing team logos (broncos, bears, steelers, panthers, panthers)
- [ ] Add player profile pic URLs to top_dawgs and dawg_watch in DB
- [ ] Deploy client to Vercel
- [ ] Deploy server to Railway, update `.env.production` with live URL
- [ ] UI polish pass on NFL/NBA ranking pages
- [ ] Mobile responsive cleanup

## What I Built

- Full-stack Vue + Node/Express app with a real PostgreSQL database
- Monorepo structure with separate client and server
- Live data fetched from Supabase via Express API on page load (Vue `mounted()`)
- Environment-based API URL switching for local vs deployed
