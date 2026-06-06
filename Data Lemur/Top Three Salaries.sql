-- https://datalemur.com/questions/sql-top-three-salaries

with ranks AS ( 
  SELECT d.department_name as department_name , e.name as emp_name, e.salary as salary,
  dense_rank() over (PARTITION BY department_name ORDER BY salary DESC) as ranking
  FROM employee e 
  INNER JOIN department d 
  ON d.department_id = e.department_id
)
SELECT department_name, emp_name, salary from ranks
WHERE ranking <= 3
order by department_name ASC, salary DESC, emp_name;
