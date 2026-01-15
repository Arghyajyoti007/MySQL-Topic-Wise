-- Query a count of the number of cities in CITY having a Population larger than .

-- https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem?isFullScreen=true

SELECT count(id) from CITY where population > 100000;
