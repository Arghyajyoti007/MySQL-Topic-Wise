-- RIGHT OUTER JOIN
select * from customerbasictable;

select * from employeebasictable;

select * 
from employeebasictable right outer join customerbasictable
on employeebasictable.employee_number = customerbasictable.salesman_employee_number;

select * 
from  customerbasictable right outer join  employeebasictable
on employeebasictable.employee_number = customerbasictable.salesman_employee_number;
