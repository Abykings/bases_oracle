REM Convert between Different Datatypes
spool lab_451.html
SELECT zip, city
FROM zipcode
WHERE zip = 10025;

SELECT zip, city
FROM zipcode
WHERE zip = TO_CHAR(10025);

SELECT zip, city
FROM zipcode
WHERE TO_NUMBER(zip) = 10025;

SELECT zip, city
FROM zipcode
WHERE CAST(zip AS NUMBER) = 10025;
--O también--
SELECT zip, city
FROM zipcode
WHERE zip = CAST(10025 AS VARCHAR2(5));

SELECT zip, TO_NUMBER(zip) "TO_NUMBER",
CAST(zip AS NUMBER) "CAST", city
FROM zipcode
WHERE zip = '10025';
spool off;