-- https://datalemur.com/questions/sql-second-highest-salary

  SELECT 
  Max(salary)
  from employee 
  where salary<
  (SELECT MAX(salary)  FROM employee )


