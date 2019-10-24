REM Format Data
spool lab_452.html
SELECT course_no, cost,
TO_CHAR(cost, '$999,999.99') Formatted
FROM course
WHERE course_no = 330;

SELECT course_no, cost oldcost,
cost*1.15 newcost,
TO_CHAR(cost*1.15, '$999,999.99') formatted,
TO_CHAR(ROUND(cost*1.15), '$999,999.99') rounded
FROM course
WHERE cost > 1500;
--o tambien --
SELECT course_no, TO_CHAR(ROUND(cost*1.15), '$999,999.99') rounded,
TO_CHAR(cost*1.15, '$999,999') "No Cents"
FROM course
WHERE cost > 1500;

SELECT 'The price for course# '||course_no||' has been increased
to '||
TO_CHAR(cost*1.15, 'fm$999,999.99')||'.'
"Increase"
FROM course
WHERE cost > 1500;
spool off;