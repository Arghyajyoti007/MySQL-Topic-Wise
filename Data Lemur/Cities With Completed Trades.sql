/* 
Assume you're given the tables containing completed trade orders and user details in a Robinhood trading system.

Write a query to retrieve the top three cities that have the highest number of completed trade orders listed in descending order. Output the city name and the corresponding number of completed trade orders.
*/
-- https://datalemur.com/questions/completed-trades
SELECT u.city, count(t.order_id) FROM trades t
left join users  u 
on u.user_id = t.user_id
where t.status = 'Completed'
GROUP BY u.city
order by count(t.order_id) DESC
LIMIT 3;
