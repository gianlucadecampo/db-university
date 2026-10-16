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
