REM Join with Multicolumn Join Criteria
spool lab_622.html
SELECT s.first_name|| ' '|| s.last_name name,
e.section_id, g.grade_type_code,
g.numeric_grade grade
FROM student s JOIN enrollment e
ON (s.student_id = e.student_id)
JOIN grade g
ON (e.student_id = g.student_id
AND e.section_id = g.section_id)
WHERE s.last_name = 'Crocitto'
AND s.first_name ='Fred'
AND e.section_id = 86;
REM Join tradicional
SELECT s.first_name|| ' '|| s.last_name name,
e.section_id, g.grade_type_code,
g.numeric_grade grade
FROM student s, enrollment e, grade g
WHERE s.last_name = 'Crocitto'
AND s.first_name ='Fred'
AND e.section_id = 86
AND s.student_id = e.student_id
AND e.student_id = g.student_id
AND e.section_id = g.section_id;

SELECT last_name, first_name
FROM student
WHERE last_name = 'Crocitto'
AND first_name = 'Fred';

SELECT s.first_name||' '|| s.last_name name,
e.section_id
FROM student s, enrollment e
WHERE s.last_name = 'Crocitto'
AND s.first_name = 'Fred'
AND e.section_id = 86
AND s.student_id = e.student_id;

SELECT s.first_name||' '|| s.last_name name,
e.section_id, g.grade_type_code grade,
g.numeric_grade, gt.description
FROM student s, enrollment e, grade g, grade_type gt
WHERE s.last_name = 'Crocitto'
AND s.first_name = 'Fred'
AND e.section_id = 86
AND s.student_id = e.student_id
AND e.student_id = g.student_id
AND e.section_id = g.section_id
AND g.grade_type_code = gt.grade_type_code;

SELECT s.first_name||' '|| s.last_name name,
e.section_id, g.grade_type_code,
g.numeric_grade grade, gt.description,
sec.course_no
FROM student s, enrollment e, grade g, grade_type gt,
section sec
WHERE s.last_name = 'Crocitto'
AND s.first_name = 'Fred'
AND e.section_id = 86
AND s.student_id = e.student_id
AND e.student_id = g.student_id
AND e.section_id = g.section_id
AND g.grade_type_code = gt.grade_type_code;

SELECT e.student_id, sec.course_no, g.numeric_grade
FROM student stud, zipcode z,
enrollment e, section sec, grade g
WHERE stud.zip = z.zip
AND z.state = 'CT'
AND stud.student_id = e.student_id
AND e.section_id = sec.section_id
AND e.section_id = g.section_id
AND e.student_id = g.student_id
AND sec.course_no = 420
AND g.grade_type_code = 'FI';

SELECT student_id, course_no, numeric_grade
FROM student JOIN zipcode
USING (zip)
JOIN enrollment
USING (student_id)
JOIN section
USING (section_id)
JOIN grade g
USING (section_id, student_id)
WHERE course_no = 420
AND grade_type_code = 'FI'
AND state = 'CT';

SELECT g.student_id, g.section_id,
gw.percent_of_final_grade pct, g.grade_type_code,
g.numeric_grade grade, s.last_name
FROM grade_type_weight gw, grade g,
enrollment e, student s
WHERE g.grade_type_code = 'PJ'
AND gw.grade_type_code = g.grade_type_code
AND gw.section_id = g.section_id
AND g.numeric_grade <= 80
AND g.section_id = e.section_id
AND g.student_id = e.student_id
AND e.student_id = s.student_id
ORDER BY s.last_name;

SELECT g.student_id, g.section_id,
gw.percent_of_final_grade pct, g.grade_type_code,
g.numeric_grade grade, s.last_name
FROM grade_type_weight gw, grade g,
student s
WHERE g.grade_type_code = 'PJ'
AND gw.grade_type_code = g.grade_type_code
AND gw.section_id = g.section_id
AND g.numeric_grade <= 80
AND g.student_id = s.student_id
ORDER BY s.last_name;
spool off;