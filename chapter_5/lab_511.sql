REM Use Aggregate Functions in a SQL Statement

SELECT COUNT(*)
FROM course
WHERE prerequisite IS NULL;

SELECT COUNT(DISTINCT student_id)
FROM enrollment;

SELECT AVG(NVL(cost, 0))
FROM course;

SELECT AVG(COALESCE(cost, 0))
FROM course;
REM o tambien
SELECT AVG(cost)
FROM course;

SELECT MAX(enroll_date)
FROM enrollment;