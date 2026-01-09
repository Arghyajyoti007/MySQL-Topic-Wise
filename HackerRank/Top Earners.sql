/*
Enter your query here.
*/
-- We define an employee's total earnings to be their monthly  worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as  space-separated integers.
-- https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true

SELECT (salary * months) AS Earnings, COUNT(*)
FROM Employee 
GROUP BY Earnings
ORDER BY Earnings DESC
LIMIT 1;
