REM Join Three or More Tables

SELECT c.course_no, s.section_no, e.student_id
FROM course c, section s, instructor i, enrollment e
WHERE c.prerequisite IS NULL
AND c.course_no = s.course_no
AND s.instructor_id = i.instructor_id
AND i.zip = '10025'
AND s.section_id = e.section_id;

SELECT course_no
FROM course
WHERE prerequisite IS NULL;

SELECT c.course_no, s.section_no
FROM course c, section s
WHERE c.prerequisite IS NULL
AND c.course_no = s.course_no;

SELECT c.course_no, s.section_no
FROM course c, section s, instructor i
WHERE c.prerequisite IS NULL
AND c.course_no = s.course_no
AND s.instructor_id = i.instructor_id
AND i.zip = '10025';

SELECT course_no, section_no, student_id
FROM course JOIN section
USING (course_no)
JOIN instructor
USING (instructor_id)
JOIN enrollment
USING (section_id)
WHERE prerequisite IS NULL
AND zip = '10025';

SELECT c.course_no, s.section_no, e.student_id
FROM course c JOIN section s
ON (c.course_no = s.course_no)
JOIN instructor i
ON (s.instructor_id = i.instructor_id)
JOIN enrollment e
ON (s.section_id = e.section_id)
WHERE c.prerequisite IS NULL
AND i.zip = '10025';

SELECT i.first_name || ' ' ||i.last_name name,
i.street_address, z.city || ', ' || z.state
|| ' ' || i.zip "City State Zip",
TO_CHAR(s.start_date_time, 'MM/DD/YY') start_dt,
section_id sect
FROM instructor i, section s, zipcode z
WHERE i.instructor_id = s.instructor_id
AND i.zip = z.zip
AND s.start_date_time >=
TO_DATE('01-JUN-2003','DD-MON-YYYY')
AND s.start_date_time <
TO_DATE('01-JUL-2003','DD-MON-YYYY');

SELECT first_name || ' ' ||last_name name,
street_address, city || ', ' || state
|| ' ' || zip "City State Zip",
TO_CHAR(start_date_time, 'MM/DD/YY') start_dt,
section_id sect
FROM instructor JOIN section s
USING (instructor_id)
JOIN zipcode
USING (zip)
WHERE start_date_time >=TO_DATE('01-JUN-2003','DD-MON-YYYY')
AND start_date_time < TO_DATE('01-JUL-2003','DD-MON-YYYY');

SELECT student_id
FROM student JOIN enrollment
USING (student_id)
JOIN zipcode
USING (zip)
WHERE state = 'CT';

SELECT s.student_id
FROM student s, enrollment e, zipcode z
WHERE s.student_id = e.student_id
AND s.zip = z.zip
AND z.state = 'CT';

