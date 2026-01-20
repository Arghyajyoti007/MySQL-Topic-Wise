/*
https://www.hackerrank.com/challenges/weather-observation-station-19/problem?isFullScreen=true
Consider P1 (a,c) and P2 (b,d) to be two points on a 2D plane where (a,b) are the respective minimum and maximum values of Northern Latitude (LAT_N) and (c,d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

Query the Euclidean Distance between points  and  and format your answer to display  decimal digits.
*/

-- a : Min(Lat_N)
-- b : Min(Long_W)
-- c : Max(Lat_N)
-- d : Max(Long_W)
-- R = SQRT(POWER((Q1-P1),2) + POWER((Q2-P2),2)) 

SELECT 
    ROUND(
        SQRT(
            POWER((Max(Lat_N)-Min(Lat_N)),2) 
            + 
            POWER((Max(Long_W)-Min(Long_W)),2)
        )
        , 
        4
    )
FROM STATION;
