/*
https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true

Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

SELECT SUM(CITY.POPULATION)
FROM CITY 
JOIN COUNTRY 
WHERE CITY.CountryCode=COUNTRY.Code AND COUNTRY.CONTINENT ="Asia";
