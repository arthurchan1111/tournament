-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

--Deletes Database named tournament if it exists
DROP DATABASE IF EXISTS tournament;

--Create tournament db and move to that db
CREATE DATABASE tournament;

\c tournament;

CREATE TABLE players(
  id serial PRIMARY KEY,
  name text
);

CREATE TABLE matches(
  rounds serial PRIMARY KEY,
  winner integer references players(id),
  loser integer references players(id)
);

CREATE VIEW win_count AS
SELECT players.id, players.name, COUNT(matches.winner) AS wins
FROM players
LEFT JOIN matches
ON players.id = matches.winner
GROUP BY players.id;

CREATE VIEW loss_count AS
SELECT players.id, players.name, COUNT(matches.loser) AS losses
FROM players
LEFT JOIN matches
ON players.id = matches.loser
GROUP BY players.id;
