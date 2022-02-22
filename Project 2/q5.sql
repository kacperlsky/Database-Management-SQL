SELECT name FROM `instructor` WHERE ID NOT IN (SELECT ID FROM teaches);
