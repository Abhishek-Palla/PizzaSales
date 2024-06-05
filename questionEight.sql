-- Join relevant tables to find the category-wise distribution of pizzas.
SELECT COUNT(pizza_types.name), pizza_types.category FROM pizza_types
GROUP BY pizza_types.category;
