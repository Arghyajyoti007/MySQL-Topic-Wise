-- Outer join left

select * from customerbasictable;

select * from employeebasictable;

select * 
from  customerbasictable 
left outer join  employeebasictable
on employeebasictable.employee_number = 
customerbasictable.salesman_employee_number;