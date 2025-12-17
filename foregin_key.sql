CREATE TABLE IF NOT EXISTS courses(
id INT NOT NULL PRIMARY KEY,
name VARCHAR(50) NOT NULL, 
trainer_name VARCHAR(50) NOT NULL,
fee INT NOT NULL
)

INSERT INTO courses (id, name, trainer_name, fee) VALUES
(1, 'Python Basics', 'Arun Sharma', 3500),
(2, 'Advanced Java', 'Ritika Verma', 5000),
(3, 'Data Structures', 'Mohit Patel', 4500),
(4, 'SQL Mastery', 'Sneha Singh', 3000),
(5, 'Web Development', 'Karan Gupta', 6000),
(6, 'Machine Learning', 'Pooja Mehta', 7000),
(7, 'Cloud Computing', 'Ankit Yadav', 5500),
(8, 'Cyber Security', 'Simran Kaur', 6500),
(9, 'ReactJS Bootcamp', 'Rahul Deshmukh', 4000),
(10, 'Data Analytics', 'Neha Joshi', 4800);

SELECT * FROM courses

CREATE TABLE IF NOT EXISTS students(
id INT NOT NULL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
age INT NOT NULL,
course_id INT,
FOREIGN KEY (course_id) REFERENCES students(id)
)

SELECT * FROM students

INSERT INTO students (id, name, age, course_id) values
(2, 'Riya Verma', 22, 3),
(3, 'Sahil Gupta', 19, 5),
(4, 'Pooja Yadav', 21, 2),
(5, 'Manish Patel', 23, 4),
(6, 'Simran Kaur', 18, 1),
(7, 'Rahul Singh', 22, 7),
(8, 'Neha Deshmukh', 20, 9),
(9, 'Karan Mehta', 21, 6),
(10, 'Sneha Joshi', 19, 10);



CREATE TABLE IF NOT EXISTS marks(
id INT PRIMARY KEY NOT NULL,
student_id INT,
marks INT NOT NULL,
FOREIGN KEY (student_id) REFERENCES students(id)
)

INSERT INTO marks (id, student_id, marks) VALUES 
(1, 1, 85),
(2, 2, 78),
(3, 3, 92),
(4, 4, 74),
(5, 5, 88),
(6, 6, 81),
(7, 7, 69),
(8, 8, 95),
(9, 9, 76),
(10, 10, 89);

SELECT * FROM marks

SELECT * FROM students






