select c.id,
c.name,
c.email,
min(created_at) as first_order_at, 
count(*) as number_of_orders
from `analytics-engineers-club.coffee_shop.customers` c 
left join `analytics-engineers-club.coffee_shop.orders` o on c.id = o.customer_id 
group by c.id, c.name, c.email
order by first_order_at
limit 5
