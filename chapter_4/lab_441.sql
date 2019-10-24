REM Understand the Functionality of the Interval Datatypes
spool lab_441.html
SELECT section_id "ID",
TO_CHAR(created_date, 'MM/DD/YY HH24:MI')
"CREATED_DATE",
TO_CHAR(start_date_time, 'MM/DD/YY HH24:MI')
"START_DATE_TIME",
NUMTODSINTERVAL(start_date_time-created_date, 'DAY')
"Interval"
FROM section
WHERE NUMTODSINTERVAL(start_date_time-created_date, 'DAY')
BETWEEN INTERVAL '100' DAY(3) AND INTERVAL '120' DAY(3)
ORDER BY 3;

SELECT NUMTODSINTERVAL(360, 'SECOND'),
NUMTODSINTERVAL(360, 'MINUTE')
FROM dual;
REM NUMTODSINTERVAL converts n to an INTERVAL DAY TO SECOND literal.

SELECT NUMTODSINTERVAL(360, 'HOUR'),
NUMTODSINTERVAL(360, 'DAY')
FROM dual;
spool off;