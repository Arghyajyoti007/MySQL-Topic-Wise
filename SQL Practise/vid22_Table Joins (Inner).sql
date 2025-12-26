-- INNER JOIN

SELECT * FROM employeebasictable INNER JOIN depertment 
ON employeebasictable.depertment_number = depertment.dept_number;

SELECT * FROM employeebasictable AS E INNER JOIN depertment AS D 
ON E.depertment_number = D.dept_number;