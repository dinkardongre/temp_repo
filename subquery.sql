SELECT * FROM courses WHERE fee > (SELECT fee FROM courses WHERE name = 'Python Basics')

SELECT * FROM students WHERE 
age > (SELECT MAX(s.age) FROM courses c JOIN students s ON c.id = s.course_id WHERE c.name ='Advanced Java')

SELECT * FROM STUDENTS WHERE AGE > (SELECT AVG(age) FROM STUDENTS)

SELECT * FROM COURSES WHERE FEE = (SELECT MAX(FEE) FROM COURSES)

SELECT * FROM STUDENTS S1
WHERE 
	S1.AGE > (SELECT AVG(AGE) FROM STUDENTS S2 WHERE S1.COURSE_ID = S2.COURSE_iD)

--List students enrolled in courses whose fee is above 5000.
SELECT * FROM STUDENTS S JOIN COURSES C ON S.COURSE_ID = C.ID WHERE C.FEE > 5000
--BOTH ARE SAME -- 
SELECT * FROM STUDENTS S JOIN COURSES C 
		ON S.COURSE_ID = C.ID 
		WHERE S.COURSE_ID
		IN (SELECT ID FROM COURSES WHERE FEE > 5000)

--Find courses that have at least one student younger than 22.
SELECT DISTINCT(C.NAME) FROM COURSES C JOIN STUDENTS S ON C.ID = S.COURSE_ID
		WHERE S.AGE > 21

--Find courses that no student has enrolled in.
SELECT * FROM COURSES WHERE ID NOT IN (SELECT C.ID FROM COURSES C JOIN STUDENTS S ON C.ID = S.COURSE_ID)

--Find students whose age is equal to any other students’s age (duplicate age).
SELECT * FROM STUDENTS WHERE AGE IN (SELECT AGE FROM STUDENTS GROUP BY AGE HAVING COUNT(AGE) > 1)

--Find students who are enrolled in the most expensive course.
SELECT S.* FROM STUDENTS S JOIN COURSES C ON S.COURSE_ID = C.ID
		WHERE C.FEE = (SELECT MAX(FEE) FROM COURSES)

--Find the second-highest course fee.
SELECT MAX(FEE) FROM COURSES WHERE FEE < (SELECT MAX(FEE) FROM COURSES)

--Find the third-highest course fee.
SELECT MAX(FEE) FROM COURSES WHERE FEE < (SELECT MAX(FEE) FROM COURSES WHERE FEE < (SELECT MAX(FEE) FROM COURSES))

SELECT * FROM STUDENTS

SELECT * FROM COURSES ORDER BY FEE DESC


-- CTE (Common Table Expression) is a temporary named result set in SQL that you can use inside a SELECT, INSERT, UPDATE, or DELETE query.


WITH cours_fee AS (
    SELECT fee
    FROM courses
	where name = 'Python Basics'
)

SELECT *
FROM  cours_fee

WITH cours_fee AS (
    SELECT fee
    FROM courses
    WHERE name = 'Python Basics'
)
SELECT *
FROM courses
WHERE fee > (SELECT fee FROM cours_fee)


SELECT * FROM COURSES

CREATE VIEW DSA_STUDENTS AS (SELECT * FROM STUDENTS WHERE COURSE_ID = 3)

SELECT * FROM DSA_STUDENTS
















