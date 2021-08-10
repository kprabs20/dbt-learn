    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

 --   from demo_db.jaffle_shop.orders
    from {{ source('jaffle_shop','orders') }}

    --where order_date >= dateadd('year', -4, current_timestamp)

       {{ events('order_date', 2) }}

