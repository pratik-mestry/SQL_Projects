
create database pizzasales;
use pizzasales;

select * from pizzas;
create table orders(
order_id int not null primary key,
order_date date not null,
order_time time not null)
select * from orders;
use pizzasales;
create table orders_details(
order_details_id int not null primary key,
order_id int not null,
pizza_id int not null,
quantity int);
select * from orders_details;
drop table  orders_details;
create table orders_details(
order_details_id int not null primary key,
order_id int not null,
pizza_id text not null,
quantity int);
select * from orders_details;
select * from orders;
select * from pizza_types;
select * from orders;
