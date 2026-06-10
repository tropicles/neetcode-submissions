-- Write your query below

select *
from customers
where customer_id IN
(
select customer_id
FROM orders
where customer_id IN
(
select *
from
(
select customer_id
FROM orders
where ((product_name='A'))

intersect 

select customer_id
FROM orders
where ((product_name='B'))

intersect 

select  customer_id
FROM orders
where customer_id NOT IN (select customer_id
from orders
where product_name='C'
)

) t
) 
)
order by customer_name


