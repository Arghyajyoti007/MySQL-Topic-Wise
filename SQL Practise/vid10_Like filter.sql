-- LIKE CLAUSE
SELECT * FROM customer.employeebasictable
where name like "Drum";

select * from employeebasictable
where name like '%o%'; -- 'O' in between the name

select * from employeebasictable
where name like 'J%n'; -- Name start with 'J' and end with 'n'

select * from employeebasictable
where name like '_h%';


