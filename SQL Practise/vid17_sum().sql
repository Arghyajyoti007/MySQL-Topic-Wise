-- SUM FUNCTION
SELECT sum(SALARY) FROM employeebasictable where job = 'clerk';

SELECT sum(SALARY) sum_salary, count(salary) count_salary, 
avg(salary) average_salary, sum(salary)/count(salary)
FROM employeebasictable;
