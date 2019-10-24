REM Compare a Text Literal to a DATE Column

SELECT course_no, section_id,
TO_CHAR(start_date_time, 'DD-MON-YYYY HH24:MI')
FROM section;

SELECT course_no, section_id,
TO_CHAR(start_date_time, 'DD-MON-YYYY HH24:MI')
FROM section
WHERE start_date_time >= TO_DATE('04-MAY-2003 12:00:00 AM',
'DD-MON-YYYY HH:MI:SS AM')
AND start_date_time <= TO_DATE('04-MAY-2003 11:59:59 PM',
'DD-MON-YYYY HH:MI:SS AM');

SELECT course_no, section_id,
TO_CHAR(start_date_time, 'DD-MON-YYYY HH24:MI')
FROM section
WHERE TRUNC(start_date_time) = TO_DATE('04-MAY-2003', 'DD-MON-YYYY');

SELECT course_no, section_id,
TO_CHAR(start_date_time, 'DD-MON-YYYY HH24:MI')
FROM section
WHERE start_date_time >= DATE '2003-05-04'
AND start_date_time < DATE '2003-05-05';

SELECT course_no, section_id,
TO_CHAR(start_date_time, 'DD-MON-YYYY HH24:MI')
FROM section
WHERE TRUNC(start_date_time) = DATE '2003-05-04';

SELECT course_no, section_id,
TO_CHAR(start_date_time, 'DD-MON-YYYY HH24:MI')
FROM section
WHERE start_date_time >= TIMESTAMP '2003-05-04 00:00:00'
AND start_date_time < TIMESTAMP '2003-05-05 00:00:00';