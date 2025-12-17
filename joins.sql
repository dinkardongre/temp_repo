SELECT * FROM students;
SELECT * FROM courses;


SELECT s.name AS student_name, c.name AS course_name, c.fee, c.trainer_name
FROM students AS s INNER JOIN courses c 
ON s.course_id = c.id

SELECT c.name AS course_name, s.name AS student_name
FROM courses AS c LEFT JOIN students s 
ON s.course_id = c.id

SELECT c.name AS course_name, s.name AS student_name
FROM courses AS c RIGHT JOIN students s 
ON s.course_id = c.id

SELECT *
FROM courses AS c FULL JOIN students s 
ON s.course_id = c.id

SELECT s.name AS student_name, c.name AS course_name, c.fee, c.trainer_name
FROM students AS s CROSS JOIN courses c 

SELECT s.name AS student_name, c.name AS course_name, c.fee, c.trainer_name
FROM students AS s INNER JOIN courses c 
ON s.course_id = c.id WHERE c.fee > 5000

SELECT DISTINCT(c.name)AS course_name
FROM students AS s INNER JOIN courses c 
ON s.course_id = c.id WHERE s.age > 21

SELECT c.name as course_name, COUNT(s.id) AS students_count 
FROM courses AS c LEFT JOIN students s
ON s.course_id = c.id
GROUP BY c.name
HAVING COUNT(s.id) > 2
ORDER BY COUNT(s.id) DESC

SELECT c.name as course_name, round(AVG(s.age)) AS avg_age
FROM courses AS c LEFT JOIN students s
ON s.course_id = c.id
GROUP BY c.name
ORDER BY AVG(s.age) DESC

SELECT c.name as course_name, (SUM(c.fee)) AS total_fee_per_course
FROM courses AS c INNER JOIN students s
ON s.course_id = c.id
GROUP BY c.name
ORDER BY AVG(s.age) DESC

SELECT c.name AS course_name, COUNT(s.name)
FROM students AS s INNER JOIN courses AS c 
ON s.course_id = c.id
WHERE c.fee > 5000
GROUP BY c.name
ORDER BY AVG(s.age) DESC


SELECT c.trainer_name, COUNT(s.name) AS count_students
FROM courses AS c INNER JOIN students AS S
ON s.course_id = c.id
GROUP BY c.trainer_name
ORDER BY COUNT(s.name) DESC

SELECT c.name AS course_name, 
FROM students s
JOIN courses c ON c.id = s.course_id
WHERE s.age = (
    SELECT MIN(age)
    FROM students
    WHERE course_id = c.id
)

SELECT c.name AS course_name, AVG(s.age) AS average_age
FROM students s
JOIN courses c ON c.id = s.course_id
GROUP BY c.name
HAVING AVG(s.age) > 20

SELECT c.name as courses_name 
FROM courses c 
LEFT JOIN students s ON c.id = s.course_id
WHERE s.id IS NULL















