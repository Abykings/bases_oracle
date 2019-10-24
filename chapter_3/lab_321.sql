REM Use Number Functions and Perform Mathematical Computations

spool lab_321.html
SELECT 10.245, ROUND(10.245, 1), ROUND(10.245, -1)
FROM dual;
REM index -1 provoca quedar sin decimal

SELECT ROUND(120.09, -2), ROUND(1444.44, -3)
FROM dual;

SELECT DISTINCT cost, cost*1.75, ROUND(cost*1.75)
FROM course;

SELECT DISTINCT numeric_grade, ROUND(numeric_grade / 2)
FROM grade;
spool off;