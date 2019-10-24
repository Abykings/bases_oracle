REM Understand the SYSDATE Function and Perform Date Arithmetic

SELECT LAST_DAY(TO_DATE('13-FEB-1964','DD-MON-YYYY')) lastday,
LAST_DAY(TO_DATE('13-FEB-1964','DD-MON-YYYY'))
- TO_DATE('13-FEB-1964','DD-MON-YYYY') days
FROM dual;

SELECT MONTHS_BETWEEN(TO_DATE('17-AUG-2003','DD-MON-YYYY'),
TO_DATE('29-SEP-1999','DD-MON-YYYY')) months
FROM dual;
REM months_between(fecha1,fecha2) => meses_entre

REM fecha  y fecha +3
SELECT TO_CHAR(SYSDATE, 'DD-MON-YYYY HH24:MI:SS') "Current",
TO_CHAR(SYSDATE+3, 'DD-MON-YYYY HH24:MI:SS') "Answer"
FROM dual;