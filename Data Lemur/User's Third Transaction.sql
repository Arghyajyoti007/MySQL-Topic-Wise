-- https://datalemur.com/questions/sql-third-transaction
with cte1 as 
(SELECT user_id,
spend,	transaction_date,
ROW_NUMBER() OVER (PARTITION BY user_id order by transaction_date) as number_of_row
FROM transactions)
SELECT user_id,
spend,	transaction_date from cte1
WHERE number_of_row = 3;
