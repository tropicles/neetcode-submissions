-- Write your query below
select name
from sales_person 
where sales_id NOT IN
(
select o.sales_id
from orders o
inner join company c on  o.com_id = c.com_id AND c.name = 'CRIMSON'
INNER JOIN sales_person s on o.sales_id = s.sales_id
)

