with orders as (select * from {{ ref('stg_ord')}}), 
payments as (select * from {{ ref('stg_payments')}}),

final_amount as (
    select
        order_id,
        sum(amount) as lifetime_value
       
    from orders 

    inner join payments using (order_id)
    group by 1

)

select * from final_amount