/*Group the orders by date and calculate the average number of pizzas ordered per day.*/
SELECT 
    orders.order_date, SUM(orders_details.quantity) AS quantity
FROM
    orders
        JOIN
    orders_details ON orders.order_id = orders_details.order_id
GROUP BY order_date;
SELECT 
   round(AVG(quantity),0) 
FROM
    (SELECT 
        orders.order_date, SUM(orders_details.quantity) AS quantity
    FROM
        orders
    JOIN orders_details ON orders.order_id = orders_details.order_id
    GROUP BY order_date) AS ord_by_date;