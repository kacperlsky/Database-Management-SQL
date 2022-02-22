SELECT name, dept_name FROM `instructor` WHERE dept_name IN (SELECT dept_name FROM department WHERE budget = (SELECT MAX(budget) FROM department));
