/*
  Query the smallest Northern Latitude (LAT_N) from STATION that is greater than . Round your answer to  decimal places.
*/

select round(min(LAT_N),4) as smallest_Northern_Latitude 
from STATION 
where LAT_N>38.7780;
