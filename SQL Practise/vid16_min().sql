-- MIN FUNCTION
SELECT * FROM employeebasictable;

SELECT MIN(SALARY) FROM employeebasictable;

SELECT MIN(SALARY) FROM employeebasictable where job = 'Manager';
SELECT MIN(SALARY) FROM employeebasictable where job = 'Manager'or job = 'Clerk';

SELECT MIN(commision) FROM employeebasictable;