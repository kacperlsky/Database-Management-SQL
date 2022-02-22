SELECT DISTINCT c_id, course_count, sec_id FROM (SELECT course_id AS c_id, COUNT(course_id) AS course_count FROM takes WHERE course_id IN (SELECT course_id FROM section WHERE year = '2009' AND semester = 'Fall') AND year = '2009' AND semester = 'Fall' GROUP BY course_id) AS TMP, section;

