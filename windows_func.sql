-- WINDOWS FUNCTION 

--AVG() as win fun
SELECT course_id, age, AVG(age) OVER() FROM students
WHERE course_id is not null

SELECT course_id, age, AVG(age) OVER(PARTITION BY course_id) FROM students
WHERE course_id is not null ORDER BY course_id


--Count() as win fun
SELECT name, course_id, COUNT(id) OVER(PARTITION BY course_id) FROM students
WHERE course_id is not null ORDER BY course_id

--SUM() as win fun
select name, age, sum(age) over(order by age) from students

select name, age, sum(age) over(order by age rows between unbounded preceding and current row) from students

--ROW_NUMBER() AS WIN FUN
SELECT name, course_id, age, row_number() over(partition by course_id) FROM students

--RANK() AS WIN FUN
SELECT name, course_id, age, RANK() over(oRDER BY AGE DESC) FROM students

--DENSE_RANK AS WIN FUN
SELECT name, course_id age, DENSE_RANK() over(ORDER by course_id) FROM students

--PERCENT_RANK AS WIN FUN
SELECT name, course_id, age, PERCENT_RANK() OVER(ORDER BY AGE) FROM STUDENTS

-- LAG() and LEAD() Access previous / next row.
SELECT name, salary,
       LAG(salary) OVER (ORDER BY salary) AS prev_salary,
       LEAD(salary) OVER (ORDER BY salary) AS next_salary
FROM employees;






