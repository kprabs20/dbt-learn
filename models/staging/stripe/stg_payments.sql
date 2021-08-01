select 
       orderid as order_id,
       sum(amount) as amount
from demo_db.stripe.payment 
group by 1
