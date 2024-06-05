-- Calculate the total revenue generated from pizza sales.
-- Tables pizzas and order_details have the same id so we can join them
SELECT ROUND(SUM(order_details.quantity * pizzas.price),2) AS Total_sales
FROM order_details 
JOIN pizzas
ON pizzas.pizza_id =order_details.pizza_id;