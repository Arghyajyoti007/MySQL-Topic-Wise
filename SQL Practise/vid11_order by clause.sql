-- ORDER BY SORTING
select * from employeebasictable order by name;

-- by default it is ASC
select * from employeebasictable order by name ASC;

-- REVERSE SORT
select * from employeebasictable order by name DESC;

select * from employeebasictable order by job asc, Name asc;

select * from employeebasictable order by job asc, Name desc;

-- WE CAN ALSO SORT USING COLUMN NUMBER
select * from employeebasictable order by 1 DESC;

select employee_number, name, job from employeebasictable order by employee_number;

-- WE CAN ALSO DO CONCATINATION
select job, Name, job + name as job_name
from employeebasictable 
order by job + Name ;

