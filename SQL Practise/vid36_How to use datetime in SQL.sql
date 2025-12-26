--  How to use datetime in SQL

select cast('20121019' as datetime);
select cast('10:05:00' as datetime);

select current_date();

select * from employeebasictable;

insert into employeebasictable 
values (1455, 'Aurthur', 'Fireman', 5877, 20020502, 222256, 84566, 58);

-- https://www.w3schools.com/sql/func_mysql_date_format.asp
SELECT DATE_FORMAT(hire_date, "%W %M %e %Y") FROM employeebasictable;