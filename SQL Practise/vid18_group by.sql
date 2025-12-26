-- GROUP BY
-- SELECT job, sum(SALARY) 
-- FROM employeebasictable;

SELECT job, sum(SALARY), min(salary), max(salary), avg(salary) 
FROM employeebasictable
group by job;

SELECT Name, sum(SALARY), min(salary), max(salary), avg(salary) 
FROM employeebasictable
group by Name;