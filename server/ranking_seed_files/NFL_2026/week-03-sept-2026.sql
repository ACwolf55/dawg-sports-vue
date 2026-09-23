-- ============================================================
-- Dawg Sports — Weekly Update Seed
-- Season: 2026 NFL | Week: 03 | Sept 2026
-- Run in Supabase SQL editor. Only refreshes: nfl_teams (power
-- rankings), qb_rankings, rb_rankings, wr_rankings, dawg_watch.
-- nba_players and top_dawgs are NOT touched.
-- ============================================================

-- ── Power Rankings (nfl_teams) ──────────────────────────────
DELETE FROM nfl_teams;

INSERT INTO nfl_teams (team, logo) VALUES
  ('Buffalo Bills',        '/team_logos/bills.png'),
  ('Seattle Seahawks',     '/team_logos/seahawks.png'),
  ('San Francisco 49ers',  '/team_logos/49ers.png'),
  ('Kansas City Chiefs',   '/team_logos/chiefs.png'),
  ('Chicago Bears',        '/team_logos/bears.png'),
  ('Los Angeles Rams',     '/team_logos/rams.png'),
  ('Cincinnati Bengals',   '/team_logos/bengals.png'),
  ('Baltimore Ravens',     '/team_logos/ravens.png'),
  ('New England Patriots', '/team_logos/patriots.png'),
  ('Philadelphia Eagles',  '/team_logos/eagles.png');

-- ── QB Rankings ──────────────────────────────────────────────
DELETE FROM qb_rankings;

INSERT INTO qb_rankings (player, team, logo_pic) VALUES
  ('Josh Allen',       'Buffalo Bills',        '/team_logos/bills.png'),
  ('Lamar Jackson',    'Baltimore Ravens',     '/team_logos/ravens.png'),
  ('Patrick Mahomes',  'Kansas City Chiefs',   '/team_logos/chiefs.png'),
  ('Joe Burrow',       'Cincinnati Bengals',   '/team_logos/bengals.png'),
  ('Matthew Stafford', 'Los Angeles Rams',     '/team_logos/rams.png'),
  ('Caleb Williams',   'Chicago Bears',        '/team_logos/bears.png'),
  ('Drake Maye',       'New England Patriots', '/team_logos/patriots.png'),
  -- ⚠️ VERIFY logo: /team_logos/lions.png used elsewhere, should exist
  ('Jared Goff',       'Detroit Lions',        '/team_logos/lions.png'),
  ('Brock Purdy',      'San Francisco 49ers',  '/team_logos/49ers.png'),
  -- ⚠️ VERIFY: /team_logos/panthers.png exists in your public folder
  ('Bryce Young',      'Carolina Panthers',    '/team_logos/panthers.png');

-- ── RB Rankings ──────────────────────────────────────────────
DELETE FROM rb_rankings;

INSERT INTO rb_rankings (player, team, logo_pic) VALUES
  ('Bijan Robinson',      'Atlanta Falcons',      '/team_logos/falcons.png'),
  ('Jahmyr Gibbs',        'Detroit Lions',        '/team_logos/lions.png'),
  ('Derrick Henry',       'Baltimore Ravens',     '/team_logos/ravens.png'),
  ('Christian McCaffrey', 'San Francisco 49ers',  '/team_logos/49ers.png'),
  ('Saquon Barkley',      'Philadelphia Eagles',  '/team_logos/eagles.png'),
  ('Jonathan Taylor',     'Indianapolis Colts',   '/team_logos/colts.png'),
  ('James Cook',          'Buffalo Bills',        '/team_logos/bills.png'),
  -- Confirmed via search: signed with Chiefs on a $45M deal (Super Bowl MVP)
  ('Kenneth Walker',      'Kansas City Chiefs',   '/team_logos/chiefs.png'),
  ('Ashton Jeanty',       'Las Vegas Raiders',    '/team_logos/raiders.png'),
  ('De''Von Achane',      'Miami Dolphins',       '/team_logos/dolphins.png');

-- ── WR Rankings ──────────────────────────────────────────────
DELETE FROM wr_rankings;

INSERT INTO wr_rankings (player, team, logo_pic) VALUES
  ('Jaxon Smith-Njigba',  'Seattle Seahawks',    '/team_logos/seahawks.png'),
  ('Ja''Marr Chase',      'Cincinnati Bengals',  '/team_logos/bengals.png'),
  ('Justin Jefferson',    'Minnesota Vikings',   '/team_logos/vikings.png'),
  ('Amon-Ra St. Brown',   'Detroit Lions',       '/team_logos/lions.png'),
  ('Puka Nacua',          'Los Angeles Rams',    '/team_logos/rams.png'),
  ('CeeDee Lamb',         'Dallas Cowboys',      '/team_logos/cowboys.png'),
  ('Devonta Smith',       'Philadelphia Eagles', '/team_logos/eagles.png'),
  -- ⚠️ VERIFY: /team_logos/texans.png exists in your public folder
  ('Nico Collins',        'Houston Texans',      '/team_logos/texans.png'),
  ('Zay Flowers',         'Baltimore Ravens',    '/team_logos/ravens.png'),
  -- Corrected spelling: official name is "Davante Adams"
  ('Davante Adams',       'Los Angeles Rams',    '/team_logos/rams.png');

-- ── Dawg Watch ───────────────────────────────────────────────
DELETE FROM dawg_watch;

INSERT INTO dawg_watch (player, position, team, logo_pic, player_pic) VALUES
  -- Confirmed via search: traded from Packers to Eagles, 1yr/$12.5M extension
  ('Dontayvion Wicks',  'WR', 'Philadelphia Eagles', '/team_logos/eagles.png',  ''),
  ('Cam Ward',          'QB', 'Tennessee Titans',    '/team_logos/titans.png',  ''),
  ('Tre Tucker',        'WR', 'Las Vegas Raiders',   '/team_logos/raiders.png', ''),
  -- Confirmed via search: signed with Seahawks, starting for injured Sam Darnold
  ('Drew Lock',         'QB', 'Seattle Seahawks',    '/team_logos/seahawks.png', ''),
  -- Correct spelling confirmed via search: "Hezekiah Masses" (rookie CB, 2 INTs this week per your note)
  ('Hezekiah Masses',   'CB', 'Las Vegas Raiders',   '/team_logos/raiders.png', ''),
  ('Jalen Coker',       'WR', 'Carolina Panthers',   '/team_logos/panthers.png', ''),
  ('Cam Skattebo',      'RB', 'New York Giants',     '/team_logos/giants.png',   '');
