REM Understand the Cartesian Product
spool lab_613.html
SELECT s.student_id, i.instructor_id,
s.zip, i.zip
FROM student s, instructor i
WHERE s.zip = i.zip
ORDER BY s.student_id, i.instructor_id;

SELECT student_id, zip
FROM student
WHERE zip = '10025';

SELECT instructor_id, zip
FROM instructor
WHERE zip = '10025';

spool off;