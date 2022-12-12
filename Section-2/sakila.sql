-- Select all data within the customers table --
select * from customer;

-- select all data within the store table --
select * from store;

-- select all the data within the films table --
select * from film;

# select customer data from customer table (3 columns  only)

select customer_id,
first_name,
last_name
from customer;

-- select all actors and their actor id --
select actor_id,first_name,last_name from actor;

-- select all data within customers table --
select * from sakila.customer;
