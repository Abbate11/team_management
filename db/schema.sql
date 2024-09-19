DROP USER IF EXISTS abbate11;


CREATE USER abbate11 WITH PASSWORD 'Abbate#11';


DROP DATABASE IF EXISTS chupacabrasDB;


CREATE DATABASE chupacabrasDB;


DROP TABLE IF EXISTS Players;
DROP TABLE IF EXISTS Team;


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
    position VARCHAR(40),
    fgm INTEGER,
    fga INTEGER,
    fg_percentage DECIMAL(5, 2),   
    three_pm INTEGER,              
    three_pa INTEGER,              
    three_p_percentage DECIMAL(5, 2), 
    ftm INTEGER,
    fta INTEGER,
    ft_percentage DECIMAL(5, 2), 
    rebounds INTEGER,
    assists INTEGER,
    blocks INTEGER,
    pf INTEGER,
    steals INTEGER,
    turnovers INTEGER,
    points INTEGER,
    CONSTRAINT fk_team FOREIGN KEY (team_id) REFERENCES Team(team_id)
);
