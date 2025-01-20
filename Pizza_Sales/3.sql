/*Identify the highest-priced pizza.*/
select * from pizza_types;
select * from pizzas;
select max(price) from pizzas;
SELECT 
    pizza_types.name, pizzas.price
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
ORDER BY pizzas.price DESC
LIMIT 1;