    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

 --   from demo_db.jaffle_shop.orders
    from {{ source('jaffle_shop','orders') }}

    {{ recent_events('order_date', 4) }}
--    group by 1,2,3


