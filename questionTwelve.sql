-- Analyze the cumulative revenue generated over time.
SELECT order_date,
SUM(revenue) OVER (order by order_date) as cum_revenue
FROM 
(SELECT orders.order_date,
SUM(order_details.quantity * pizzas.price) as Revenue
FROM order_details JOIN pizzas
on order_details.pizza_id = pizzas.pizza_id
JOIN orders
ON orders.order_id = order_details.order_id
Group BY orders.order_date) as sales;
