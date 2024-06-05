-- List the top 5 most ordered pizza types along with their quantities.

-- As there is no direct link betwee pizza_types and order_details we have to
-- join 3 tables including pizzas
SELECT pizza_types.name,SUM(order_details.quantity) as Total_quantity
FROM pizza_types JOIN pizzas
ON pizza_types.pizza_type_id = pizzas.pizza_type_id
JOIN order_details
ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY Total_quantity DESC LIMIT 5 ;