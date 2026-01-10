/*
Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than . Round your answer to  decimal places.
*/

select Round(LONG_W, 4 )
FROM STATION 
where LAT_N > 38.778
order by LAT_N ASC
LIMIT 1 ;
