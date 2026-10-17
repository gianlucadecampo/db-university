SELECT YEAR(enrolment_date) AS YEAR, COUNT(*) AS registred
FROM students
GROUP BY YEAR(enrolment_date)
ORDER BY YEAR(enrolment_date);