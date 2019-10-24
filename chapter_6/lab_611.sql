REM Write Simple Join Constructs
spool lab_611.html
SELECT s.last_name, s.zip, z.state, z.city
FROM student s, zipcode z
WHERE s.zip = z.zip
ORDER BY s.zip;

SELECT s.last_name, s.zip, z.state, z.city
FROM student s JOIN zipcode z
ON (s.zip = z.zip)
ORDER BY s.zip;

SELECT s.last_name, zip, z.state, z.city
FROM student s JOIN zipcode z
USING (zip)
ORDER BY zip;

SELECT s.first_name, s.last_name, s.student_id
FROM student s, enrollment e
WHERE s.student_id = e.student_id
ORDER BY s.last_name;

SELECT DISTINCT s.first_name, s.last_name, s.student_id
FROM student s, enrollment e
WHERE s.student_id = e.student_id
ORDER BY s.last_name;

SELECT s.first_name, s.last_name, s.student_id
FROM student s JOIN enrollment e
ON (s.student_id = e.student_id)
ORDER BY s.last_name;

SELECT first_name, last_name, student_id
FROM student JOIN enrollment
USING (student_id)
ORDER BY last_name;
spool off;