SELECT name FROM `student` WHERE ID IN (sELECT ID FROM takes WHERE course_id IN (SELECT course_id FROM course WHERE dept_name LIKE 'Comp. Sci.'));
