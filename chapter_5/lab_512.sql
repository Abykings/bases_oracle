REM Use the GROUP BY and HAVING Clauses

SELECT prerequisite, COUNT(*)
FROM course
GROUP BY prerequisite
ORDER BY prerequisite;

SELECT prerequisite, COUNT(*)
FROM course
GROUP BY prerequisite
ORDER BY prerequisite NULLS FIRST;

SELECT student_id, COUNT(*)
FROM enrollment
GROUP BY student_id
HAVING COUNT(*) > 2;

SELECT course_no "Course #",
AVG(capacity) "Avg. Capacity",
ROUND(AVG(capacity)) "Rounded Avg. Capacity"
FROM section
GROUP BY course_no;

SELECT course_no "Course #",
AVG(capacity) "Avg. Capacity",
ROUND(AVG(capacity)) "Rounded Avg. Capacity"
FROM section
GROUP BY course_no
HAVING COUNT(*) = 2