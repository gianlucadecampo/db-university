SELECT *
FROM students
JOIN degrees
ON degrees.id = students.degree_id
WHERE degrees.name = 'Corso di Laurea in Economia';

SELECT *
FROM degrees
JOIN departments
ON degrees.department_id = departments.id
WHERE degrees.LEVEL = 'Magistrale' AND departments.name = 'Dipartimento di Neuroscienze';

SELECT *
FROM teachers
JOIN course_teacher
ON teachers.id = course_teacher.teacher_id
JOIN courses
ON courses.id = course_teacher.course_id
WHERE teachers.id = 44;