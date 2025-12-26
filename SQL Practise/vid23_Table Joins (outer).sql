-- OUTER JOIN
select * from customerbasictable;

select * from employeebasictable;

select * 
from customerbasictable left outer join employeebasictable
on customerbasictable.salesman_employee_number = employeebasictable.employee_number;

select * 
from customerbasictable as c join employeebasictable as e
on c.salesman_employee_number = e.employee_number;

select customerbasictable.Customer_name, employeebasictable.Name
from customerbasictable left outer join employeebasictable
on customerbasictable.salesman_employee_number = employeebasictable.employee_number;


