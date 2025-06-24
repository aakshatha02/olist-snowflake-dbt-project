with source as (
    select * from {{ref('stg_customers')}}
),

aggregated as(
    select
        orders.customer_id,
        customer_unique_id,
        customer_city,
        customer_state,
        count(order_items.order_id) as total_orders,
        sum(price) as total_spend
    from source
    join {{ref('stg_orders')}} as orders
        on orders.customer_id = source.customer_id
    join {{ref('stg_order_items')}} as order_items
        on order_items.order_id = orders.order_id
    group by orders.customer_id, customer_unique_id, customer_city, customer_state
)

select * from aggregated