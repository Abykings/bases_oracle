REM Narrow Down Your Result Set
spool lab_612.html
SELECT c.course_no, c.description, s.section_no
FROM course c, section s
WHERE c.course_no = s.course_no
AND c.prerequisite IS NULL
ORDER BY c.course_no, s.section_no;

SELECT c.course_no, c.description, s.section_no
FROM course c JOIN section s
ON (c.course_no = s.course_no)
WHERE c.prerequisite IS NULL
ORDER BY c.course_no, section_no;

SELECT e.student_id, s.course_no,
TO_CHAR(e.enroll_date,'MM/DD/YYYY HH:MI PM'),
e.section_id
FROM enrollment e JOIN section s
ON (e.section_id = s.section_id)
WHERE s.course_no = 20
AND e.enroll_date >= TO_DATE('01/30/2003','MM/DD/YYYY')
AND e.enroll_date < TO_DATE('01/31/2003','MM/DD/YYYY');

SELECT e.student_id, s.course_no,
TO_CHAR(e.enroll_date,'MM/DD/YYYY HH:MI PM'),
e.section_id
FROM enrollment e, section s
WHERE e.section_id = s.section_id
AND s.course_no = 20
AND e.enroll_date >= TO_DATE('01/30/2003','MM/DD/YYYY')
AND e.enroll_date < TO_DATE('01/31/2003','MM/DD/YYYY');
spool off;