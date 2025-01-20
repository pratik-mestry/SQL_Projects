/*Retrieve the total number of orders placed*/
SELECT 
    COUNT(order_id) AS Total_no_of_orders
FROM
    orders;