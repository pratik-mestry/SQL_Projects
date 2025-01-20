/*Calculate the total revenue generated from pizza sales.*/
select * from pizzas;
select * from pizza_types;
select * from orders_details;
SELECT 
    SUM(orders_details.quantity * pizzas.price) AS Revenue
FROM
    orders_details
        JOIN
    pizzas ON orders_details.pizza_id = pizzas.pizza_id;
SELECT ROUND(817860.049999993, 2) AS Total_Revenue;
