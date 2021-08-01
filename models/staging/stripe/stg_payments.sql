select id as customer_id
      ,orderid as order_id
      ,sum(amount) as amount
from demo_db.stripe.payment 
group by 1,2