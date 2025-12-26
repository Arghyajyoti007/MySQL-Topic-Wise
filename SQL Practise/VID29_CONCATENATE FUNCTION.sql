-- CONCATENATE FUNCTION
select name + '_' + job as name_job from employeebasictable;
select name + '_' + cast(salary as char) as name_job from employeebasictable;