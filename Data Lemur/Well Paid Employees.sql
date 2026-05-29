
/*Companies often perform salary analyses to ensure fair compensation practices. One useful analysis is to check if there are any employees earning more than their direct managers.

As a HR Analyst, you're asked to identify all employees who earn more than their direct managers. The result should include the employee's ID and name.*/

-- https://datalemur.com/questions/sql-well-paid-employees
SELECT 
  emp.employee_id, emp.name as emp_name
FROM employee emp
inner join employee manager
on emp.manager_id = manager.employee_id
where emp.salary > manager.salary;
