-- ============================================================
-- Dawg Sports — Seed File
-- Run this in Supabase SQL editor to create tables + load data
-- ============================================================

-- Drop existing tables (safe to re-run)
DROP TABLE IF EXISTS nba_players;
DROP TABLE IF EXISTS nfl_players;
DROP TABLE IF EXISTS nfl_teams;

-- ── Tables ────────────────────────────────────────────────────

CREATE TABLE nfl_teams (
  id    SERIAL PRIMARY KEY,
  rank  INTEGER NOT NULL,
  team  VARCHAR(100) NOT NULL,
  logo  VARCHAR(200)
);

CREATE TABLE nfl_players (
  id          SERIAL PRIMARY KEY,
  rank        INTEGER,
  player      VARCHAR(100) NOT NULL,
  position    VARCHAR(10),
  team        VARCHAR(100),
  logo_pic    VARCHAR(200),
  player_pic  VARCHAR(200),
  info        TEXT,
  category    VARCHAR(20) NOT NULL
  -- category: 'top_dawg' | 'dawg_watch' | 'qb' | 'rb' | 'wr'
);

CREATE TABLE nba_players (
  id     SERIAL PRIMARY KEY,
  rank   INTEGER NOT NULL,
  player VARCHAR(100) NOT NULL
);

-- ── NFL Team Rankings ─────────────────────────────────────────

INSERT INTO nfl_teams (rank, team, logo) VALUES
  (1,  'Seattle Seahawks',     '/team_logos/seahawks.png'),
  (2,  'Los Angeles Rams',     '/team_logos/rams.png'),
  (3,  'Philadelphia Eagles',  '/team_logos/eagles.png'),
  (4,  'Detroit Lions',        '/team_logos/lions.png'),
  (5,  'Buffalo Bills',        '/team_logos/bills.png'),
  (6,  'New England Patriots', '/team_logos/patriots.png'),
  (7,  'Denver Broncos',       '/team_logos/broncos.png'),
  (8,  'Baltimore Ravens',     '/team_logos/ravens.png'),
  (9,  'Chicago Bears',        '/team_logos/bears.png'),
  (10, 'Kansas City Chiefs',   '/team_logos/chiefs.png');

-- ── Top Dawgs ─────────────────────────────────────────────────

INSERT INTO nfl_players (player, position, team, logo_pic, player_pic, info, category) VALUES
  ('Jaxon Smith-Njigba',  'WR', 'Seattle Seahawks',    '/team_logos/seahawks.png', '', '', 'top_dawg'),
  ('Matthew Stafford',    'QB', 'Los Angeles Rams',    '/team_logos/rams.png',     '', '', 'top_dawg'),
  ('Christian McCaffrey', 'RB', 'San Francisco 49ers', '/team_logos/49ers.png',    '', '', 'top_dawg'),
  ('Bijan Robinson',      'RB', 'Atlanta Falcons',     '/team_logos/falcons.png',  '', '', 'top_dawg'),
  ('Jonathan Taylor',     'RB', 'Indianapolis Colts',  '/team_logos/colts.png',    '', '', 'top_dawg'),
  ('Micah Parsons',       'DE', 'Green Bay Packers',   '/team_logos/packers.png',  '', '', 'top_dawg'),
  ('Patrick Surtain II',  'CB', 'Denver Broncos',      '/team_logos/broncos.png',  '', '', 'top_dawg'),
  ('Ja''Marr Chase',      'WR', 'Cincinnati Bengals',  '/team_logos/bengals.png',  '', '', 'top_dawg'),
  ('James Cook',          'RB', 'Buffalo Bills',       '/team_logos/bills.png',    '', '', 'top_dawg'),
  ('Myles Garrett',       'DE', 'Cleveland Browns',    '/team_logos/browns.png',   '', '', 'top_dawg');

-- ── Dawg Watch ────────────────────────────────────────────────

INSERT INTO nfl_players (player, position, team, logo_pic, player_pic, info, category) VALUES
  ('Cam Skattebo',     'RB', 'New York Giants',      '/team_logos/giants.png',     '', '', 'dawg_watch'),
  ('Daniel Jones',     'QB', 'Indianapolis Colts',   '/team_logos/colts.png',      '', '', 'dawg_watch'),
  ('Emeka Egbuka',     'WR', 'Tampa Bay Buccaneers', '/team_logos/buccaneers.png', '', '', 'dawg_watch'),
  ('Drake Maye',       'QB', 'New England Patriots', '/team_logos/patriots.png',   '', '', 'dawg_watch'),
  ('Rico Dowdle',      'RB', 'Pittsburgh Steelers',  '/team_logos/steelers.png',   '', '', 'dawg_watch'),
  ('Jaxson Dart',      'QB', 'New York Giants',      '/team_logos/giants.png',     '', '', 'dawg_watch'),
  ('Bo Nix',           'QB', 'Denver Broncos',       '/team_logos/broncos.png',    '', '', 'dawg_watch'),
  ('Javonte Williams', 'RB', 'Dallas Cowboys',       '/team_logos/cowboys.png',    '', '', 'dawg_watch'),
  ('Cooper Dejean',    'CB', 'Philadelphia Eagles',  '/team_logos/eagles.png',     '', '', 'dawg_watch'),
  ('Ashton Jeanty',    'RB', 'Las Vegas Raiders',    '/team_logos/raiders.png',    '', '', 'dawg_watch');

-- ── QB Rankings ───────────────────────────────────────────────

INSERT INTO nfl_players (rank, player, team, logo_pic, category) VALUES
  (1,  'Patrick Mahomes',  'Kansas City Chiefs',    '/team_logos/chiefs.png',     'qb'),
  (2,  'Josh Allen',       'Buffalo Bills',          '/team_logos/bills.png',      'qb'),
  (3,  'Matthew Stafford', 'Los Angeles Rams',       '/team_logos/rams.png',       'qb'),
  (4,  'Lamar Jackson',    'Baltimore Ravens',       '/team_logos/ravens.png',     'qb'),
  (5,  'Jalen Hurts',      'Philadelphia Eagles',    '/team_logos/eagles.png',     'qb'),
  (6,  'Justin Herbert',   'San Diego Chargers',     '/team_logos/chargers.png',   'qb'),
  (7,  'Sam Darnold',      'Seattle Seahawks',       '/team_logos/seahawks.png',   'qb'),
  (8,  'Drake Maye',       'New England Patriots',   '/team_logos/patriots.png',   'qb'),
  (9,  'Daniel Jones',     'Indianapolis Colts',     '/team_logos/colts.png',      'qb'),
  (10, 'Baker Mayfield',   'Tampa Bay Buccaneers',   '/team_logos/buccaneers.png', 'qb');

-- ── RB Rankings ───────────────────────────────────────────────

INSERT INTO nfl_players (rank, player, team, logo_pic, category) VALUES
  (1,  'Jonathan Taylor',    'Indianapolis Colts',   '/team_logos/colts.png',    'rb'),
  (2,  'Christian McCaffrey','San Francisco 49ers',  '/team_logos/49ers.png',    'rb'),
  (3,  'Bijan Robinson',     'Atlanta Falcons',       '/team_logos/falcons.png',  'rb'),
  (4,  'Saquon Barkley',     'Philadelphia Eagles',   '/team_logos/eagles.png',   'rb'),
  (5,  'Jahmyr Gibbs',       'Detroit Lions',         '/team_logos/lions.png',    'rb'),
  (6,  'James Cook',         'Buffalo Bills',         '/team_logos/bills.png',    'rb'),
  (7,  'Devon Achane',       'Miami Dolphins',        '/team_logos/dolphins.png', 'rb'),
  (8,  'Rico Dowdle',        'Carolina Panthers',     '/team_logos/panthers.png', 'rb'),
  (9,  'Josh Jacobs',        'Green Bay Packers',     '/team_logos/packers.png',  'rb'),
  (10, 'Derrick Henry',      'Baltimore Ravens',      '/team_logos/ravens.png',   'rb');

-- ── WR Rankings ───────────────────────────────────────────────

INSERT INTO nfl_players (rank, player, team, logo_pic, category) VALUES
  (1,  'Justin Jefferson',    'Minnesota Vikings',    '/team_logos/vikings.png',  'wr'),
  (2,  'Ja''Marr Chase',      'Cincinnati Bengals',   '/team_logos/bengals.png',  'wr'),
  (3,  'Jaxson Smith-Njigba', 'Seattle Seahawks',     '/team_logos/seahawks.png', 'wr'),
  (4,  'Puka Nacua',          'Los Angeles Rams',     '/team_logos/rams.png',     'wr'),
  (5,  'Amon-Ra St. Brown',   'Detroit Lions',        '/team_logos/lions.png',    'wr'),
  (6,  'CeeDee Lamb',         'Dallas Cowboys',       '/team_logos/cowboys.png',  'wr'),
  (7,  'Drake London',        'Atlanta Falcons',      '/team_logos/falcons.png',  'wr'),
  (8,  'AJ Brown',            'Philadelphia Eagles',  '/team_logos/eagles.png',   'wr'),
  (9,  'Devonta Adams',       'Los Angeles Rams',     '/team_logos/rams.png',     'wr'),
  (10, 'Devonta Smith',       'Philadelphia Eagles',  '/team_logos/eagles.png',   'wr');

-- ── NBA Players ───────────────────────────────────────────────

INSERT INTO nba_players (rank, player) VALUES
 (1, 'Victor Wembanyama'),
(2, 'Nikola Jokic'),
(3, 'Giannis Antetokounmpo'),
(4, 'Luka Doncic'),
(5, 'Stephen Curry'),
(6, 'Shai Gilgeous-Alexander'),
(7, 'Anthony Edwards'),
(8, 'Donovan Mitchell'),
(9, 'Jayson Tatum'),
(10, 'Devin Booker'),
(11, 'Jalen Brunson'),
(12, 'LeBron James'),
(13, 'Joel Embiid'),
(14, 'Kevin Durant'),
(15, 'Anthony Davis'),
(16, 'Jaylen Brown'),
(17, 'Tyrese Maxey'),
(18, 'Kawhi Leonard'),
(19, 'Cade Cunningham'),
(20, 'Paolo Banchero'),