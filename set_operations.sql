# SET Operations Questions

1. Give me the list of all people who are either employees or music club members (no duplicates).
2. Give me the combined list of employees and music club members, even if some names appear multiple times.
3. Give me the list of employees who have not joined the music club.
4. Give me the list of people who are present in both the employees table and the music club.


CREATE TABLE if not exists Employees (
	id int primary key,
    name VARCHAR(50)
)

INSERT INTO Employees (id,name) VALUES
(1,'Amit'),
(2,'Neha'),
(3,'Rahul'),
(4,'Priya'),
(5,'Karan'),
(6,'Neha')

CREATE TABLE MusicClub (
	id int primary key,
    name VARCHAR(50)
)

INSERT INTO MusicClub (id, name) VALUES
(1, 'Neha'),
(2, 'Rahul'),
(3, 'Sneha'),
(4, 'Amit'),
(5, 'Amit')


-- 1️⃣ UNION (most common)

-- Combines results and removes duplicates

SELECT name FROM Employees
UNION
SELECT name FROM MusicClub

-- 2️⃣ UNION ALL

-- Combines results and keeps duplicates

SELECT name FROM Employees
UNION ALL
SELECT name FROM MusicClub

-- 3️⃣ INTERSECT

-- Common rows in both queries

SELECT name FROM Employees
INTERSECT
SELECT name FROM MusicClub

-- 4️⃣ EXCEPT / MINUS

-- Rows in first query but NOT in second

SELECT name FROM Employees
EXCEPT
SELECT name FROM MusicClub

SELECT name FROM MusicClub
EXCEPT
SELECT name FROM Employees