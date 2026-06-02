const express = require('express')
const app = express()
require('dotenv').config()
const Sequelize = require('sequelize')
const cors = require('cors')

const { DATABASE_URL } = process.env
const PORT = 4000

app.use(express.json())
app.use(cors())

const sequelize = new Sequelize(DATABASE_URL, {
  dialect: 'postgres',
  dialectOptions: {
    ssl: {
      rejectUnauthorized: false,
    },
  },
})

// --- NFL Endpoints ---

app.get('/api/nfl/rankings', (req, res) => {
  sequelize.query('SELECT * FROM nfl_teams ORDER BY rank ASC;').then((dbRes) => {
    res.send(dbRes[0])
  })
})

app.get('/api/nfl/top-dawgs', (req, res) => {
  sequelize.query("SELECT * FROM nfl_players WHERE category = 'top_dawg' ORDER BY id ASC;").then((dbRes) => {
    res.send(dbRes[0])
  })
})

app.get('/api/nfl/dawg-watch', (req, res) => {
  sequelize.query("SELECT * FROM nfl_players WHERE category = 'dawg_watch' ORDER BY id ASC;").then((dbRes) => {
    res.send(dbRes[0])
  })
})

app.get('/api/nfl/qb-rankings', (req, res) => {
  sequelize.query("SELECT * FROM nfl_players WHERE category = 'qb' ORDER BY rank ASC;").then((dbRes) => {
    res.send(dbRes[0])
  })
})

app.get('/api/nfl/rb-rankings', (req, res) => {
  sequelize.query("SELECT * FROM nfl_players WHERE category = 'rb' ORDER BY rank ASC;").then((dbRes) => {
    res.send(dbRes[0])
  })
})

app.get('/api/nfl/wr-rankings', (req, res) => {
  sequelize.query("SELECT * FROM nfl_players WHERE category = 'wr' ORDER BY rank ASC;").then((dbRes) => {
    res.send(dbRes[0])
  })
})

// --- NBA Endpoints ---

app.get('/api/nba/players', (req, res) => {
  sequelize.query('SELECT * FROM nba_players ORDER BY rank ASC;').then((dbRes) => {
    res.send(dbRes[0])
  })
})

app.listen(PORT, console.log(`RUNNING @ PORT ${PORT}`))
