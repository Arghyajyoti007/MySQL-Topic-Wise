-- In this assignment, students will practice using INNER JOIN to combine data from two related tables:
-- Create two tables: students and courses.
-- The students table should have columns for student_id, student_name, and course_id.
-- The courses table should have columns for course_id and course_name.
-- Insert data into both tables with multiple records.
-- Write an SQL query that performs an INNER JOIN between the students and courses tables, connecting them using the course_id column.
-- Retrieve and display a result set that includes the student_name and course_name of each student along with the course they are enrolled in.

use school_database;

drop table students;
drop table courses;

create table students(
	student_id int primary key auto_increment, 
    student_name varchar(50) not null, 
    course_id int not null
);
create table courses(
	course_id int primary key auto_increment,
    course_name varchar(50)
);

INSERT INTO courses (course_name) VALUES
('Computer Science'),
('Electronics'),
('Mechanical Engineering'),
('Civil Engineering'),
('Data Science');

INSERT INTO students (student_name, course_id) VALUES
('Arjun Sharma', 1),
('Neha Verma', 2),
('Rahul Singh', 1),
('Priya Nair', 3),
('Amit Patel', 4),
('Sneha Roy', 2),
('Rohit Kumar', 5),
('Ananya Das', 1);

select * from students;
select * from courses;

-- Write an SQL query that performs an INNER JOIN between the students and courses tables, connecting them using the course_id column.
-- Retrieve and display a result set that includes the student_name and course_name of each student along with the course they are enrolled in.
select student_id, student_name, course_name from students
inner join courses 
on students.course_id = courses.course_id;
