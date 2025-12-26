-- ALIAS
SELECT name, job, salary + isnull(commision) as total_salary
FROM employeebasictable;
-- NUll + some values = NULL

SELECT job, sum(SALARY) as sum_salary
FROM employeebasictable
group by job;
