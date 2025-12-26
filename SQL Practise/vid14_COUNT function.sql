-- COUNT FUNCTION
select * from employeebasictable;

select count(*) as count
from employeebasictable;

select count(*)  
from employeebasictable
where job = 'Clerk';

select count(job)  
from employeebasictable
where job = 'Clerk';

-- to find distinct job
select count(distinct job)  
from employeebasictable;


