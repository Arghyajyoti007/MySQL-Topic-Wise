-- MAX FUNCTION
SELECT * FROM employeebasictable;

SELECT MAX(SALARY) AS MAX_SALARY FROM employeebasictable;

SELECT MAX(SALARY) AS MAX_SALARY 
FROM employeebasictable
WHERE JOB = 'Clerk';

SELECT MAX(SALARY) AS MAX_SALARY 
FROM employeebasictable
WHERE JOB = 'HR' or Job = 'Clerk';









