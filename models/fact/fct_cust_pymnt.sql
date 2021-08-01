with orders as (select * from {{ ref('stg_ord')}}), 
payments as (select * from {{ ref('stg_payments')}}),

final_payment as (
    select
        customer_id,

        order_id,
        sum(amount) as lifetime_value
       
    from orders

    inner join payments using (customer_id,order_id)

)

select * from final_payment