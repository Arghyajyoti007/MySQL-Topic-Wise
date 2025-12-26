-- CHARINDEX - INSTRING

-- MySQL doesn't have a built-in CHARINDEX() function. 
-- LOCATE() would be the MySQL equivalent. 
-- MySQL does have a similar function: 
-- InStr or for the same syntax Locate.
 
select locate('R', name), name
from employeebasictable;

select instr(name, 'r'), Name
from employeebasictable;


