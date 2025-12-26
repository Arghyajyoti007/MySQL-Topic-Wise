-- How to use addition in SQL

-- SQL Add, Addition Operator
select salary, isnull(commision), salary + isnull(commision) as total 
from employeebasictable;

select hire_date, hire_date + 2 as training_date
from employeebasictable;
