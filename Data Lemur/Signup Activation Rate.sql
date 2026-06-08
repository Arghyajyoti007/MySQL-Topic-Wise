-- https://datalemur.com/questions/signup-confirmation-rate
with CTE1 AS
(SELECT 
  SUM(
    CASE 
      WHEN t.signup_action = 'Confirmed' THEN 1 ELSE 0 
    END
  ) as confirmed_users_count, 
  count(distinct e.email_id)as total_user
FROM emails e
LEFT JOIN texts t
ON e.email_id = t.email_id
)
SELECT 
  round(confirmed_users_count/total_user:: DECIMAL,2)
from CTE1
;
