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

SELECT *
FROM students
JOIN degrees
ON degrees.id = students.degree_id 
JOIN departments
ON departments.id = degrees.department_id
ORDER BY students.surname, students.name;

SELECT degrees.name AS 'degree', teachers.name AS prof_name, teachers.surname AS prof_surname, courses.name AS 'course'
FROM degrees
JOIN courses
ON degrees.id = courses.degree_id 
JOIN course_teacher
ON courses.id = course_teacher.course_id
JOIN teachers
ON teachers.id = course_teacher.teacher_id
ORDER BY degrees.name;

SELECT DISTINCT teachers.surname, teachers.name, departments.name 
FROM teachers
JOIN course_teacher
ON teachers.id = course_teacher.teacher_id
JOIN courses
ON courses.id = course_teacher.course_id
JOIN degrees
ON degrees.id = courses.degree_id
JOIN departments
ON departments.id = degrees.department_id
WHERE departments.name = 'Dipartimento di Matematica'
ORDER BY teachers.surname, teachers.name;

--Bonus exercise

SELECT students.name AS name, students.surname AS surname, COUNT(*) AS tot_tries, max(exam_student.vote) AS max_vote
FROM students
JOIN exam_student
ON students.id = exam_student.student_id
GROUP BY exam_student.student_id;

SELECT students.name AS name, students.surname AS surname, COUNT(*) AS tot_tries
FROM students
JOIN exam_student
ON students.id = exam_student.student_id
WHERE exam_student.vote >= 18
GROUP BY exam_student.student_id;