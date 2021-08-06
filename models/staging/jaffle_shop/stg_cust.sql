select
     id as customer_id,
     first_name,
     last_name

--from demo_db.jaffle_shop.customers
from {{ source('jaffle_shop','customers') }}
