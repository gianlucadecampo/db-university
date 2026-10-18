SELECT YEAR(enrolment_date) AS YEAR, COUNT(*) AS registred
FROM students
GROUP BY YEAR(enrolment_date)
ORDER BY YEAR(enrolment_date);

SELECT office_address AS office_location, count(*) AS tot_teachers
FROM teachers
GROUP BY office_address;

SELECT AVG(exam_student.vote) AS average, exam_id AS exam
FROM exam_student
GROUP BY exam_id;

SELECT department_id AS dep_id, count(*) AS tot_degrees
FROM degrees
GROUP BY department_id;