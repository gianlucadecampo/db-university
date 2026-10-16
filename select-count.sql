SELECT *
FROM students 
WHERE YEAR(date_of_birth)=1990 ;

SELECT *
FROM courses
WHERE cfu>10 ;

SELECT *
FROM students
WHERE (2026 - YEAR(date_of_birth))>30  ;

SELECT *
FROM courses
WHERE year = 1 AND period = 'I semestre';

SELECT *
FROM exams
WHERE HOUR(`hour`) >= 14 AND date = '2020-06-20';

SELECT *
FROM degrees
WHERE `level`= 'magistrale';

SELECT COUNT(*) as tot_departments
FROM departments

SELECT COUNT(*) as 'without phone'
FROM teachers
WHERE phone IS NULL;