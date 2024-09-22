\c chupacabras_db;

INSERT INTO team 
(team_name, players_names, wins, losses, games_played, win_loss_percentage)
VALUES 
('Chupacabras', 'Lenny, John, Rico, Christian, Emir', 10, 5, 15, 66.66),
('Bandits', 'Jerry, Timmy, Tommy, Tony, Tristan', 8, 7, 15, 53.33),
('Rangers', 'Marco, Luis, Romeo, Jordan, Spencer', 12, 3, 15, 80.00);

INSERT INTO players 
(player_name, team_id, position, field_goals_made, field_goals_attempted, 
field_goal_percentage, three_points_made, three_points_attempted, three_point_percentage,
free_throws_made, free_throws_attempted, free_throw_percentage, rebounds,
assists, blocks, pf, steals, turnovers, points)
VALUES 
('Lenny', 1, 'C', 2, 4, 50.00, 1, 2, 50.00, 10, 13, 76.92, 17, 13, 8, 6, 9, 3, 158),
('John', 1, 'PF', 8, 11, 72.72, 6, 10, 60.00, 10, 14, 71.43, 7, 9, 2, 5, 8, 3, 173),
('Rico', 1, 'PG', 14, 20, 70.00, 16, 26, 61.54, 18, 25, 72.00, 3, 12, 2, 4, 7, 2, 192),
('Christian', 1, 'SG', 15, 20, 75.00, 18, 29, 62.10, 24, 31, 77.42, 5, 15, 5, 4, 6, 1, 181),
('Emir', 1, 'SF', 10, 17, 58.82, 10, 16, 62.50, 20, 26, 76.92, 7, 21, 7, 4, 7, 4, 169);
