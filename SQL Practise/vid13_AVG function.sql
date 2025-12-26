-- AVG FUNCTIONS
select * from employeebasictable;

select avg(salary) as avarage_salary from employeebasictable;

select avg(salary) as avarage_salary 
from employeebasictable
where job = "Clerk";

-- AVG() DOES NOT INCLUDE NULL VALUES
select avg(commision) as avarage_commission
from employeebasictable
where job = "Clerk";