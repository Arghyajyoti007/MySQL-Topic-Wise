-- AS STATEMENT
SELECT e1.job, sum(SALARY) as sum_salary
FROM employeebasictable as e1
group by e1.Job;
