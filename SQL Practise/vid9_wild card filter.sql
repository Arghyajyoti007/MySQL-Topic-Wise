-- WILD CARD FILTER
select * from employeebasictable
where name like 'D%'; -- name strat with 'D'

select * from employeebasictable
where name like '%o%'; -- 'O' in between the name

select * from employeebasictable
where name like '_O%'; -- 'O' must be second letter

select * from employeebasictable
where name like '__O%'; -- 'O' must be third letter 





