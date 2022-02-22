SELECT name FROM `student` WHERE ID IN (SELECT ID FROM takes WHERE course_id IN (SELECT course_id FROM teaches WHERE ID = (SELECT ID FROM instructor WHERE name LIKE 'Einstein')));
