REM Use a Character Function in a SQL Statement
spool lab_311.html
SELECT description "Description",
INITCAP(description) "Initcap Description"
FROM course
WHERE description LIKE '%SQL%';

SELECT last_name
FROM instructor
WHERE LENGTH(last_name) >= 6;

SELECT SUBSTR('12345', 3),
SUBSTR('12345', 3, 2),
SUBSTR('12345', -4, 3)
FROM dual;

SELECT zip, LTRIM(zip, '0'), RTRIM(ZIP, '4')
FROM zipcode
ORDER BY zip;

SELECT TRIM('1' FROM '01230145601')
FROM dual;

SELECT LTRIM('01230145601', '01') left,
RTRIM('01230145601', '01') right,
RTRIM(LTRIM('01230145601', '01'), '01') both,
REPLACE('01230145601', '01') replace
FROM dual;

SELECT TRANSLATE('555-1212', '0123456789',
'##########')
FROM dual
REM Translate tambien identifica patrones

SELECT student_id, employer
FROM student
WHERE TRANSLATE(employer, '_', '+') LIKE '%B+B%';

SELECT student_id, employer
FROM student
WHERE employer LIKE '%B\_B%' ESCAPE '\'

REM REGEXP sustituyo a translate como identificador de expresiones

SELECT student_id, last_name
FROM student
WHERE INSTR(last_name, 'o', 1, 3) > 0;

SELECT (
LENGTH('Fred fed Ted bread, and Ted fed Fred bread.') -
LENGTH(REPLACE(
'Fred fed Ted bread, and Ted fed Fred bread.',
'ed', NULL))
) /2 AS occurr
FROM dual;

SELECT REPLACE('Fred fed Ted bread, and Ted fed Fred bread', 'ed', NULL)
FROM dual;
