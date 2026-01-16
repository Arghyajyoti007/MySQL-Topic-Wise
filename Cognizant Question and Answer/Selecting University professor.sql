SELECT * FROM univerksity.professor;
SELECT * FROM university.department;

select Name, Salary from university.professor 
where Depertment_ID != 1
and Salary > (select Min(Salary) from university.professor where depertment_ID=1) ;
