-- https://datalemur.com/questions/time-spent-snaps

with CTE1 as 
(
  select 
    a.user_id,	a.activity_type,	a.time_spent, ag.age_bucket as age_bucket
  from activities a
  Inner JOIN age_breakdown  ag
  on ag.user_id = a.user_id
  WHERE activity_type = 'open' or activity_type = 'send'
),
total_time AS
(
  SELECT age_bucket,
  sum(CASE 
      when activity_type = 'send' then time_spent
      else 0
    END)  as time_spent_sending,
    sum(CASE 
      when activity_type = 'open' then time_spent
      else 0
    END) as time_spent_opening
  FROM CTE1 
  GROUP BY age_bucket
)

select age_bucket,
  round((time_spent_sending)*100.0/(time_spent_sending+time_spent_opening),2) as send_perc,
  round((time_spent_opening)*100.0/(time_spent_sending+time_spent_opening),2) as open_perc
from total_time
;
