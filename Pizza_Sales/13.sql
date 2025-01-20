/*Determine the top 3 most ordered pizza types based on revenue for each pizza category.*/
select name, Revenue from
(select category,name,Revenue,
rank()over(partition by Category order by Revenue desc) as rn
from
(select pizza_types.category,pizza_types.name,
sum((orders_details.quantity) * pizzas.price) as Revenue
from pizza_types join pizzas
on pizza_types.pizza_type_id=pizzas.pizza_type_id
join orders_details on
orders_details.pizza_id=pizzas.pizza_id
group by pizza_types.category,pizza_types.name 
order by Revenue desc) as pizzacat) as b where rn<=3;
