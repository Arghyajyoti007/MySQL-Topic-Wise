/*
Question : https://www.hackerrank.com/challenges/occupations/problem?isFullScreen=true

Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output should consist of four columns (Doctor, Professor, Singer, and Actor) in that specific order, with their respective names listed alphabetically under each column.

Note: Print NULL when there are no more names corresponding to an occupation.

Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.
*/
select 
max(case when Occupation="Doctor" then Name else Null END),
max(case when Occupation="Professor" then Name else Null END) ,
max(case when Occupation="Singer" then Name else Null END) ,
max(case when Occupation="Actor" then Name else Null END) 
from (
    select name, Occupation, 
    Row_number() over (Partition by Occupation order by name) 
    as row_num 
    from Occupations
) AS grouped_names
group by row_num
order by row_num ;

