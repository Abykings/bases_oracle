 REM Use Oracles Timestamp and Time Zone Datatypes

SELECT last_name, registration_date,
TO_CHAR(registration_date, 'MM/DD/YYYY')
AS "Formatted"
FROM student
WHERE student_id IN (123, 161, 190);

SELECT DBTIMEZONE
FROM dual;
SELECT LOCALTIMESTAMP
FROM dual;
SELECT SYSDATE
FROM dual;
SELECT SYSTIMESTAMP
FROM dual;
SELECT LOCALTIMESTAMP
FROM dual;
REM falta la bd date_examples :(