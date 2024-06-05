-- Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT ROUND(avg(quantity),0) FROM
(SELECT DATE(orders.order_date) as date, SUM(order_details.quantity) as quantity
FROM orders JOIN order_details
ON orders.order_id = order_details.order_id
GROUP BY date) as Ordered_quantity;