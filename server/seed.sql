-- ============================================================
-- Dawg Sports — Seed File
-- Run this in Supabase SQL editor to create tables + load data
-- id = ranking (inserted in order, SERIAL handles it)
-- ============================================================

-- Drop existing tables (safe to re-run)
DROP TABLE IF EXISTS dawg_watch;
DROP TABLE IF EXISTS top_dawgs;
DROP TABLE IF EXISTS wr_rankings;
DROP TABLE IF EXISTS rb_rankings;
DROP TABLE IF EXISTS qb_rankings;
DROP TABLE IF EXISTS nba_players;
DROP TABLE IF EXISTS nfl_teams;

-- ── Tables ────────────────────────────────────────────────────

CREATE TABLE nfl_teams (
  id     SERIAL PRIMARY KEY,
  team   VARCHAR(100),
  logo   VARCHAR(200)
);

CREATE TABLE qb_rankings (
  id       SERIAL PRIMARY KEY,
  player   VARCHAR(100),
  team     VARCHAR(100),
  logo_pic VARCHAR(200)
);

CREATE TABLE rb_rankings (
  id       SERIAL PRIMARY KEY,
  player   VARCHAR(100),
  team     VARCHAR(100),
  logo_pic VARCHAR(200)
);

CREATE TABLE wr_rankings (
  id       SERIAL PRIMARY KEY,
  player   VARCHAR(100),
  team     VARCHAR(100),
  logo_pic VARCHAR(200)
);

CREATE TABLE nba_players (
  id     SERIAL PRIMARY KEY,
  player VARCHAR(100)
);

CREATE TABLE top_dawgs (
  id         SERIAL PRIMARY KEY,
  player     VARCHAR(100),
  position   VARCHAR(10),
  team       VARCHAR(100),
  logo_pic   VARCHAR(200),
  player_pic VARCHAR(200)
);

CREATE TABLE dawg_watch (
  id         SERIAL PRIMARY KEY,
  player     VARCHAR(100),
  position   VARCHAR(10),
  team       VARCHAR(100),
  logo_pic   VARCHAR(200),
  player_pic VARCHAR(200)
);

-- ── NFL Team Rankings (id 1 = #1) ────────────────────────────

INSERT INTO nfl_teams (team, logo) VALUES
  ('Seattle Seahawks',     '/team_logos/seahawks.png'),
  ('Los Angeles Rams',     '/team_logos/rams.png'),
  ('Philadelphia Eagles',  '/team_logos/eagles.png'),
  ('Detroit Lions',        '/team_logos/lions.png'),
  ('Buffalo Bills',        '/team_logos/bills.png'),
  ('New England Patriots', '/team_logos/patriots.png'),
  ('Denver Broncos',       '/team_logos/broncos.png'),
  ('Baltimore Ravens',     '/team_logos/ravens.png'),
  ('Chicago Bears',        '/team_logos/bears.png'),
  ('Kansas City Chiefs',   '/team_logos/chiefs.png');

-- ── QB Rankings (id 1 = #1) ──────────────────────────────────

INSERT INTO qb_rankings (player, team, logo_pic) VALUES
  ('Patrick Mahomes',  'Kansas City Chiefs',    '/team_logos/chiefs.png'),
  ('Josh Allen',       'Buffalo Bills',          '/team_logos/bills.png'),
  ('Matthew Stafford', 'Los Angeles Rams',       '/team_logos/rams.png'),
  ('Lamar Jackson',    'Baltimore Ravens',       '/team_logos/ravens.png'),
  ('Jalen Hurts',      'Philadelphia Eagles',    '/team_logos/eagles.png'),
  ('Justin Herbert',   'San Diego Chargers',     '/team_logos/chargers.png'),
  ('Sam Darnold',      'Seattle Seahawks',       '/team_logos/seahawks.png'),
  ('Drake Maye',       'New England Patriots',   '/team_logos/patriots.png'),
  ('Daniel Jones',     'Indianapolis Colts',     '/team_logos/colts.png'),
  ('Baker Mayfield',   'Tampa Bay Buccaneers',   '/team_logos/buccaneers.png');

-- ── RB Rankings (id 1 = #1) ──────────────────────────────────

INSERT INTO rb_rankings (player, team, logo_pic) VALUES
  ('Bijan Robinson',      'Atlanta Falcons',      '/team_logos/falcons.png'),
  ('Christian McCaffrey', 'San Francisco 49ers',  '/team_logos/49ers.png'),
  ('Jahmyr Gibbs',        'Detroit Lions',        '/team_logos/lions.png'),
  ('James Cook',          'Buffalo Bills',        '/team_logos/bills.png'),
  ('Jonathan Taylor',     'Indianapolis Colts',   '/team_logos/colts.png'),
  ('Derrick Henry',       'Baltimore Ravens',     '/team_logos/ravens.png'),
  ('Saquon Barkley',      'Philadelphia Eagles',  '/team_logos/eagles.png'),
  ('Devon Achane',        'Miami Dolphins',       '/team_logos/dolphins.png'),
  ('Kenneth Walker',      'Kansas City Chiefs',   '/team_logos/chiefs.png'),
  ('Ashton Jeanty',       'Oakland Raiders',      '/team_logos/raiders.png');

-- ── WR Rankings (id 1 = #1) ──────────────────────────────────

INSERT INTO wr_rankings (player, team, logo_pic) VALUES
  ('Justin Jefferson',    'Minnesota Vikings',   '/team_logos/vikings.png'),
  ('Ja''Marr Chase',      'Cincinnati Bengals',  '/team_logos/bengals.png'),
  ('Jaxson Smith-Njigba', 'Seattle Seahawks',    '/team_logos/seahawks.png'),
  ('Puka Nacua',          'Los Angeles Rams',    '/team_logos/rams.png'),
  ('Amon-Ra St. Brown',   'Detroit Lions',       '/team_logos/lions.png'),
  ('CeeDee Lamb',         'Dallas Cowboys',      '/team_logos/cowboys.png'),
  ('Drake London',        'Atlanta Falcons',     '/team_logos/falcons.png'),
  ('AJ Brown',            'Philadelphia Eagles', '/team_logos/eagles.png'),
  ('Devonta Adams',       'Los Angeles Rams',    '/team_logos/rams.png'),
  ('Devonta Smith',       'Philadelphia Eagles', '/team_logos/eagles.png');

-- ── NBA Players (id 1 = #1) ──────────────────────────────────

INSERT INTO nba_players (player) VALUES
  ('Victor Wembanyama'),
  ('Nikola Jokic'),
  ('Giannis Antetokounmpo'),
  ('Luka Doncic'),
  ('Stephen Curry'),
  ('Shai Gilgeous-Alexander'),
  ('Anthony Edwards'),
  ('Donovan Mitchell'),
  ('Jayson Tatum'),
  ('Devin Booker'),
  ('Jalen Brunson'),
  ('LeBron James'),
  ('Joel Embiid'),
  ('Kevin Durant'),
  ('Anthony Davis'),
  ('Jaylen Brown'),
  ('Tyrese Maxey'),
  ('Kawhi Leonard'),
  ('Cade Cunningham'),
  ('Paolo Banchero');

-- ── Top Dawgs ────────────────────────────────────────────────

INSERT INTO top_dawgs (player, position, team, logo_pic, player_pic) VALUES
  ('Jaxon Smith-Njigba',  'WR', 'Seattle Seahawks',    '/team_logos/seahawks.png', ''),
  ('Matthew Stafford',    'QB', 'Los Angeles Rams',    '/team_logos/rams.png',     ''),
  ('Christian McCaffrey', 'RB', 'San Francisco 49ers', '/team_logos/49ers.png',    ''),
  ('Bijan Robinson',      'RB', 'Atlanta Falcons',     '/team_logos/falcons.png',  ''),
  ('Jonathan Taylor',     'RB', 'Indianapolis Colts',  '/team_logos/colts.png',    ''),
  ('Micah Parsons',       'DE', 'Green Bay Packers',   '/team_logos/packers.png',  ''),
  ('Patrick Surtain II',  'CB', 'Denver Broncos',      '/team_logos/broncos.png',  ''),
  ('Ja''Marr Chase',      'WR', 'Cincinnati Bengals',  '/team_logos/bengals.png',  ''),
  ('James Cook',          'RB', 'Buffalo Bills',       '/team_logos/bills.png',    ''),
  ('Myles Garrett',       'DE', 'Cleveland Browns',    '/team_logos/browns.png',   '');

-- ── Dawg Watch ───────────────────────────────────────────────

INSERT INTO dawg_watch (player, position, team, logo_pic, player_pic) VALUES
  ('Cam Skattebo',     'RB', 'New York Giants',      '/team_logos/giants.png',     ''),
  ('Daniel Jones',     'QB', 'Indianapolis Colts',   '/team_logos/colts.png',      ''),
  ('Emeka Egbuka',     'WR', 'Tampa Bay Buccaneers', '/team_logos/buccaneers.png', ''),
  ('Drake Maye',       'QB', 'New England Patriots', '/team_logos/patriots.png',   ''),
  ('Rico Dowdle',      'RB', 'Pittsburgh Steelers',  '/team_logos/steelers.png',   ''),
  ('Jaxson Dart',      'QB', 'New York Giants',      '/team_logos/giants.png',     ''),
  ('Bo Nix',           'QB', 'Denver Broncos',       '/team_logos/broncos.png',    ''),
  ('Javonte Williams', 'RB', 'Dallas Cowboys',       '/team_logos/cowboys.png',    ''),
  ('Cooper Dejean',    'CB', 'Philadelphia Eagles',  '/team_logos/eagles.png',     ''),
  ('Ashton Jeanty',    'RB', 'Las Vegas Raiders',    '/team_logos/raiders.png',    '');