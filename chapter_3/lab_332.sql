REM Utilize the Power of the DECODE Function and the CASE Expression
spool lab_332.html
SELECT student_id, first_name||' '|| last_name name,
phone,
DECODE(phone, NULL, 'No phone# exists.', 'Phone# exists.')
"Get this result"
FROM student
WHERE student_id IN (111, 112);

REM las siguientes sentencias actuan igual
SELECT course_no, description, prerequisite "ORIGINAL",
CASE WHEN prerequisite = 120 THEN '200'
WHEN prerequisite = 130 THEN 'N/A'
WHEN prerequisite IS NULL THEN 'None'
ELSE TO_CHAR(prerequisite)
END "NEW"
FROM course
WHERE course_no IN (20, 120, 122, 132)
ORDER BY course_no DESC;

SELECT course_no, description, prerequisite "ORIGINAL",
DECODE(prerequisite, 120, '200',
130, 'N/A',
NULL, 'None',
TO_CHAR(prerequisite)) "NEW"
FROM course
WHERE course_no IN (20, 120, 122, 132)
ORDER BY course_no DESC;

REM las siguientes sentencias actuan igual

SELECT student_id, zip, phone,
CASE WHEN SUBSTR(phone, 1, 3) = '212' THEN
CASE WHEN zip = '10048' THEN 'North Campus'
ELSE 'West Campus'
END
ELSE 'Off Campus'
END loc
FROM student
WHERE student_id IN (150, 145, 325);

SELECT student_id, zip, phone,
DECODE(SUBSTR(phone, 1, 3), '212',
DECODE(zip, '10048', 'North Campus',
'West Campus'),
'Off Campus') loc
FROM student
WHERE student_id IN (150, 145, 325);

REM mi nombre en ascii
SELECT ASCII('A') "A", ASCII('b') "b", ASCII('d') "d",
ASCII('i') "i", ASCII('e') "e", ASCII('l') "l"
FROM dual;
spool off;