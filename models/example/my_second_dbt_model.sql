
-- Use the `ref` function to select from other models

--select *
--from {{ ref('my_first_dbt_model') }}
--where id = 1

select * from demo_db.stripe.payment
