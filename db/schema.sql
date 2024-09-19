DROP DATABASE IF EXISTS chupacabrasDB;

CREATE USER abbate11 WITH PASSWORD 'Abbate#11';

CREATE DATABASE chupacabrasDB;

\c chupacabrasDB

CREATE TABLE Team (
    team_id SERIAL PRIMARY KEY,
    team_name VARCHAR(40) UNIQUE NOT NULL,
    players_names VARCHAR(40) NOT NULL,
    wins INTEGER NOT NULL,
    losses INTEGER NOT NULL,
    win_loss_percentage DECIMAL(5, 2) NOT NULL
);

CREATE TABLE Players (
    player_id SERIAL PRIMARY KEY,
    player_name VARCHAR(40) NOT NULL,
    team_id INTEGER NOT NULL,
    CONSTRAINT fk_team FOREIGN KEY (team_id) REFERENCES role(team_id),
    position VARCHAR(40),
    fgm INTEGER,
    fga INTEGER,
    fg% DECIMAL(5, 2),
    3pm INTEGER,
    3pa INTEGER,
    3p% DECIMAL(5, 2),
    ftm INTEGER,
    fta INTEGER,
    ft% DECIMAL(5, 2),
    rebounds INTEGER,
    assists INTEGER,
    blocks INTEGER,
    pf INTEGER,
    steals INTEGER,
    turnovers INTEGER,
    points INTEGER
);
