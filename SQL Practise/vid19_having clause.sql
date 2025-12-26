-- HAVING CLAUSE
SELECT job, sum(SALARY)
FROM employeebasictable
group by job
having sum(salary)>50000;

-- where clause will check row by row
-- SELECT sum(SALARY)
-- FROM employeebasictable
-- where salary > 50000;