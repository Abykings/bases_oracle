REM Apply Format Models
spool lab_412.html
SELECT course_no, section_id,
TO_CHAR(start_date_time, 'DY DD-MON-YYYY')
FROM section
WHERE TO_CHAR(start_date_time, 'DY') = 'TUE';

SELECT course_no, section_id,
TO_CHAR(start_date_time, 'Day DD-Mon-YYYY')
FROM section;
WHERE TO_CHAR(start_date_time, 'Day') = 'Tuesday';
SELECT course_no, section_id,
TO_CHAR(start_date_time, 'Day DD-Mon-YYYY')
FROM section
WHERE TO_CHAR(start_date_time, 'fmDay') = 'Tuesday';
REM fm llena espacios vacioss

SELECT section_id,
TO_CHAR(start_date_time, 'DD-MON-YYYY HH24:MI:SS')
FROM section
WHERE start_date_time >= TO_DATE('07/01/2003', 'MM/DD/YYYY')
AND start_date_time < TO_DATE('08/01/2003', 'MM/DD/YYYY');

SELECT section_id,
TO_CHAR(start_date_time, 'DD-MON-YYYY HH24:MI:SS')
FROM section
WHERE start_date_time BETWEEN
TO_DATE('07/01/2003', 'MM/DD/YYYY')
AND TO_DATE('07/31/2003', 'MM/DD/YYYY');

REM En 24 horas (formato)
SELECT section_id,
TO_CHAR(start_date_time, 'DD-MON-YYYY HH24:MI:SS')
FROM section
WHERE start_date_time BETWEEN
TO_DATE('07/01/2003', 'MM/DD/YYYY')
AND TO_DATE('07/31/2003 23:59:59', 'MM/DD/YYYY HH24:MI:SS');


SELECT TO_CHAR(TO_DATE('31-DEC-1899', 'DD-MON-YYYY'),'Dy')
FROM dual;
spool off;