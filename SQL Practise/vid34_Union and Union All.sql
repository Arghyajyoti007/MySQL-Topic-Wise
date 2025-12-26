-- UNION AND UNION ALL
-- UNION ALL : Append the second set onto the first set
select * from customerbasictable 
where customer_number between 1 and 3
union all 
select * from customerbasictable 
where customer_number between 2 and 6;

-- UNION 
select * from customerbasictable 
where customer_number between 1 and 3
union 
select * from customerbasictable 
where customer_number between 2 and 6;