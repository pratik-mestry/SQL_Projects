/*List the top 5 most ordered pizza types along with their quantities.*/
use pizzasales;
select * from pizza_types;
select * from pizzas;
select * from orders_details;
SELECT 
    pizza_types.name,
    sum(orders_details.quantity) AS orderquantity
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
    join
    orders_details
    on orders_details.pizza_id=pizzas.pizza_id
    
GROUP BY pizza_types.name
ORDER BY orderquantity DESC
LIMIT 5;