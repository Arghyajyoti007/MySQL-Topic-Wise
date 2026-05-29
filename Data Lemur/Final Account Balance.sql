/*Given a table containing information about bank deposits and withdrawals made using Paypal, write a query to retrieve the final account balance for each account, taking into account all the transactions recorded in the table with the assumption that there are no missing transactions.

transactions Table:
Column Name	Type
transaction_id	integer
account_id	integer
amount	decimal
transaction_type	varchar
*/
-- https://datalemur.com/questions/final-account-balance
SELECT 
  account_id,
  sum(CASE
    WHEN transaction_type = 'Deposit' THEN amount
    WHEN transaction_type = 'Withdrawal' THEN -amount
  END) as final_balance
FROM transactions
GROUP BY account_id;
