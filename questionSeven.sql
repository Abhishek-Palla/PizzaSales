-- Determine the distribution of orders by hour of the day.


SELECT HOUR(order_time) as Hour, COUNT(order_id) FROM orders
GROUP BY Hour
Order BY Count(order_id) DESC ;
