with customers as (select * from {{ ref('stg_cust') }}),

customer_payment as (select * from {{ ref('fct_cust_pymnt') }}),

customer_orders as (select * from {{ ref('int_custord')}}),



final as (

    select
        customers.customer_id,
        customers.first_name,
        customers.last_name,
        customer_orders.first_order_date,
        customer_orders.most_recent_order_date,
        coalesce(customer_orders.number_of_orders, 0) as number_of_orders
        coalesce(customer_payment.lifetime_value,0) as final_payment_amount

    from customers

    left join customer_orders using (customer_id)

    left join customer_payment using (customer_id)

)

select * from final