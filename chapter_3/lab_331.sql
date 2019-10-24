REM Apply Substitution Functions and Other Miscellaneous Functions
spool lab_331.html
SELECT first_name||' '|| last_name name,
phone oldphone,
NVL(phone, '212-555-1212') newphone
FROM student
WHERE phone IS NULL;

SELECT first_name||' '|| last_name name,
phone oldphone,
COALESCE(phone, '212-555-1212') newphone
FROM student
WHERE COALESCE(phone, 'NONE') ='NONE';
REM coalesce es como if(null) => cambialo

SELECT course_no, cost,
NVL(cost,1000)*0.9 new
FROM course
WHERE course_no >= 430;

SELECT student_id id, first_name||' '|| last_name name,
phone,
NVL2(phone, 'Phone# exists.', 'No phone# exists.')
"Get this result"
FROM student
WHERE student_id IN (111, 112);
spool off;