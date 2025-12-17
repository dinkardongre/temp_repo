



Select * from employees

SELECT emp_name, salary FROM employees

SELECT emp_name FROM employees WHERE department = 'Finance'

SELECT emp_name FROM employees WHERE salary > 50000

SELECT * FROM employees WHERE salary > 80000 OR salary < 30000

SELECT * FROM employees WHERE department IN ('IT', 'HR', 'Finance')

SELECT * FROM employees WHERE salary BETWEEN 45000 AND 70000

SELECT * FROM employees ORDER BY salary DESC

SELECT * FROM employees LIMIT 5

SELECT * FROM employees ORDER BY salary DESC LIMIT 5

SELECT * FROM employees ORDER BY emp_name

SELECT DISTINCT(department) AS unique_dept FROM employees

SELECT COUNT(DISTINCT(department)) AS department_count FROM employees

SELECT COUNT(emp_name) AS total_no_of_emp FROM employees

SELECT COUNT(emp_name) AS total_count_of_emp_from_hr FROM employees WHERE department = 'HR'

SELECT AVG(salary) AS avg_salary FROM employees 

SELECT MAX(salary) AS max_salary FROM employees

SELECT SUM(salary) FROM employees WHERE department = 'Finance'

SELECT * FROM employees WHERE emp_name IN ('Ritu', 'Sagar', 'Gauri')

SELECT * FROM employees WHERE department NOT IN ('Sales')

SELECT * FROM employees WHERE emp_id BETWEEN 20 AND 30

SELECT department, MIN(salary) FROM employees GROUP BY department 

SELECT department, COUNT(emp_name) FROM employees GROUP BY department

SELECT department, ROUND(AVG(salary),2) AS avg_sal FROM employees 
GROUP BY department 
HAVING AVG(salary) > 60000

SELECT * FROM employees 
WHERE department = 'Finance'
ORDER BY salary 

SELECT * FROM employees WHERE salary IN (32041, 53325)

SELECT * FROM employees WHERE salary NOT BETWEEN 40000 AND 60000

SELECT department, COUNT(emp_name) FROM employees GROUP BY department HAVING COUNT(emp_name) > 10

SELECT emp_name, department, salary FROM employees ORDER BY department, salary

SELECT * FROM employees WHERE emp_name LIKE 'S_n%'
SELECT * FROM employees WHERE emp_name LIKE 'S%'

SELECT department, SUM(salary) FROM employees GROUP BY department HAVING SUM(salary) > 400000

SELECT AVG(salary) AS avg FROM employees WHERE avg > AVG(salary) 

SELECT emp_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees)

SELECT MIN(salary) FROM employees WHERE department = 'Sales'

SELECT * 
FROM employees e
WHERE salary = 
(SELECT MAX(salary) FROM employees GROUP BY department)


SELECT * FROM employees WHERE salary IN (SELECT salary FROM employees WHERE department = 'Finance') 

#Alter table

ALTER TABLE employees
ADD COLUMN city VARCHAR(50)

ALTER TABLE employees
ADD COLUMN city_2 VARCHAR(50) DEFAULT 'Bhopal'

ALTER TABLE employees
RENAME COLUMN city to new_city

ALTER TABLE employees
DROP new_city

ALTER TABLE employees
ALTER COLUMN salary TYPE DECIMAL(10, 2)

ALTER TABLE employees
ADD COLUMN salry_level VARCHAR(50)

UPDATE employees
SET salry_level = CASE 
	WHEN salary > 50000 THEN 'HIGH'	
	ELSE 'LOW'
END
						

UPDATE employees SET emp_name = 'Mandeep' WHERE emp_id = 1

UPDATE employees SET emp_name = 'Mandeep', salary = 25000.35 WHERE emp_id = 1

UPDATE employees SET city = 'Bhopal'

UPDATE employees SET salary = salary + 10000.34 WHERE department = 'IT'

UPDATE employees SET city_2 = 'Indore'
WHERE emp_id IN (2, 4, 12, 14)

DELETE FROM employees WHERE emp_id = 1

DELETE FROM employees WHERE city = 'Indore'

SELECT * FROM employees ORDER BY emp_id

SELECT * FROM students

DELETE FROM students

DROP TABLE students

CREATE DATABASE techsimplus

ALTER TABLE employees
DROP city

SELECT * FROM employees

UPDATE employees SET salary = 73714.00 WHERE department = 'IT'

UPDATE employees SET department = 'IT' WHERE emp_name = 'Rohit'


--VIEW - virtual table

CREATE VIEW SR_Hr_employees AS (SELECT * FROM employees WHERE salary > 30000 and department = 'HR')

SELECT * FROM Sr_employees

DROP VIEW Sr_employees

-- LAG() and LEAD() Access previous / next row.
SELECT emp_name, salary,
       LAG(salary) OVER (ORDER BY salary) AS prev_salary,
       LEAD(salary) OVER (ORDER BY salary) AS next_salary
FROM employees;





