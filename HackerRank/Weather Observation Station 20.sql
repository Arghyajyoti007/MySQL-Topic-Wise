/*
https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true
A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.
*/

-- Option 1
WITH CTE1 AS (
    SELECT 
        LAT_N, 
        ROW_NUMBER() OVER (ORDER BY LAT_N) AS row_num
    FROM STATION 
),
CTE2 AS (
    SELECT COUNT(row_num) AS LAT_N_COUNT FROM CTE1
)
SELECT ROUND(LAT_N, 4) FROM CTE1, CTE2 
WHERE row_num = 
    (SELECT 
    CASE 
        WHEN LAT_N_COUNT % 2 = 0 THEN (LAT_N_COUNT / 2 + (LAT_N_COUNT / 2 + 1)) / 2.0
        ELSE (LAT_N_COUNT + 1) / 2.0
    END
FROM CTE2);
------------------------------------------------------------------------------------------------------------
-- Option 2
WITH CTE1 AS (
    SELECT 
        LAT_N, 
        ROW_NUMBER() OVER (ORDER BY LAT_N) AS row_num
    FROM STATION 
),
CTE2 AS (
    SELECT COUNT(*) AS total_rows FROM STATION
)
SELECT ROUND(AVG(LAT_N), 4) 
FROM CTE1, CTE2
WHERE CTE1.row_num IN (FLOOR((total_rows + 1) / 2.0), CEIL((total_rows + 1) / 2.0));
