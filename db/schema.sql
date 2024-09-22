DROP DATABASE IF EXISTS chupacabras_db;


CREATE DATABASE chupacabras_db;


DROP TABLE IF EXISTS players;
DROP TABLE IF EXISTS team;


\c chupacabras_db;


CREATE TABLE team (
    team_id SERIAL PRIMARY KEY,
    team_name VARCHAR(40) UNIQUE NOT NULL,
    players_names VARCHAR(40) NOT NULL,
    wins INTEGER,
    losses INTEGER,
    games_played INTEGER,
    win_loss_percentage DECIMAL(5, 2)
);


CREATE TABLE players (
    player_id SERIAL PRIMARY KEY,
    player_name VARCHAR(40) NOT NULL,
    team_id INTEGER NOT NULL,
    position VARCHAR(40),
    field_goals_made INTEGER,
    field_goals_attempted INTEGER,
    field_goal_percentage DECIMAL(5, 2),   
    three_points_made INTEGER,              
    three_points_attempted INTEGER,              
    three_point_percentage DECIMAL(5, 2), 
    free_throws_made INTEGER,
    free_throws_attempted INTEGER,
    free_throw_percentage DECIMAL(5, 2), 
    rebounds INTEGER,
    assists INTEGER,
    blocks INTEGER,
    pf INTEGER,
    steals INTEGER,
    turnovers INTEGER,
    points INTEGER,
    CONSTRAINT fk_team FOREIGN KEY (team_id) REFERENCES Team(team_id)
);

