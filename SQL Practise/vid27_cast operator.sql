-- CAST FUNTION
select cast(salary as decimal(7)) from employeebasictable;

select name +"-"+ cast(salary as char) from employeebasictable;