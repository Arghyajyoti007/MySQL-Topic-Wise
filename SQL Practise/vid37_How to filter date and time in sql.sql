-- How to filter date and time in sql
-- Date and Time
-- Between
-- Trunc 
select * 
from employeebasictable;

select * 
from employeebasictable
where hire_date = '2002-05-02';

select * 
from employeebasictable
where hire_date >= '2002-05-02 00:00:00' and hire_date < '2023-09-28 00:00:00';