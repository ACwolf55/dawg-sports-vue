// Dawg Sports — Express API
// Serves NFL + NBA ranking data from PostgreSQL (Supabase)
// Client fetches from here on page load via axios

const express = require('express')
const app = express()
require('dotenv').config()
const Sequelize = require('sequelize')
const cors = require('cors')

const { DATABASE_URL } = process.env
const PORT = 4000

// Middleware
app.use(express.json())
app.use(cors())

// DB connection — uses session pooler URI from Supabase (IPv4 compatible)
// DATABASE_URL is set in .env locally and in Railway env vars when deployed
const sequelize = new Sequelize(DATABASE_URL, {
  dialect: 'postgres',
  dialectOptions: {
    ssl: {
      rejectUnauthorized: false, // required for Supabase SSL
    },
  },
})

// --- NFL Endpoints ---

app.get('/api/nfl/rankings', (req, res) => {
  sequelize.query('SELECT * FROM nfl_teams ORDER BY id ASC;').then((dbRes) => {
    res.send(dbRes[0])
  })
})

app.get('/api/nfl/top-dawgs', (req, res) => {
  sequelize.query('SELECT * FROM top_dawgs ORDER BY id ASC;').then((dbRes) => {
    res.send(dbRes[0])
  })
})

app.get('/api/nfl/dawg-watch', (req, res) => {
  sequelize.query('SELECT * FROM dawg_watch ORDER BY id ASC;').then((dbRes) => {
    res.send(dbRes[0])
  })
})

app.get('/api/nfl/qb-rankings', (req, res) => {
  sequelize.query('SELECT * FROM qb_rankings ORDER BY id ASC;').then((dbRes) => {
    res.send(dbRes[0])
  })
})

app.get('/api/nfl/rb-rankings', (req, res) => {
  sequelize.query('SELECT * FROM rb_rankings ORDER BY id ASC;').then((dbRes) => {
    res.send(dbRes[0])
  })
})

app.get('/api/nfl/wr-rankings', (req, res) => {
  sequelize.query('SELECT * FROM wr_rankings ORDER BY id ASC;').then((dbRes) => {
    res.send(dbRes[0])
  })
})

// --- NBA Endpoints ---

app.get('/api/nba/players', (req, res) => {
  sequelize.query('SELECT * FROM nba_players ORDER BY id ASC;').then((dbRes) => {
    res.send(dbRes[0])
  })
})

app.listen(PORT, console.log(`RUNNING @ PORT ${PORT}`))
