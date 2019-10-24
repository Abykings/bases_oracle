REM Concatenate Strings
spool lab_312.html
SELECT last_name||', '||first_name
FROM instructorSELECT last_name||', '||first_name
FROM instructor;

SELECT RPAD(course_no, 10, '.')||description
AS "Description"
FROM course
WHERE INSTR(description, 'Intro') = 1
ORDER BY LENGTH(description);
REM Instr o LIKE funcionan igual
spool off;

