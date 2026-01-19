-- Query the total population of all cities in CITY where District is California.

-- https://www.hackerrank.com/challenges/revising-aggregations-sum/problem?isFullScreen=true

select sum(population)  from CITY where district = "California";
