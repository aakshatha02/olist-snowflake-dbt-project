with source as (
    select * from {{ref('stg_orders')}}
),
aggregated as (
    select
        order_items.order_id,
        customer_id,
        order_status,
        count(source.order_id) as order_count,
        sum(price) as total_order_value,
        order_purchase_ts as order_date
from source
join {{ref('stg_order_items')}} as order_items
    on order_items.order_id = source.order_id
group by order_items.order_id, customer_id, order_status, order_date
)

select * from aggregated