-- models/marts/mart_sales.sql
with items as (
    select * from {{ ref('stg_order_items') }}
),

orders as (
    select
        order_id,
        order_purchase_ts as order_date
    from {{ ref('stg_orders') }}
),

joined as (
    select
        items.order_id,
        orders.order_date,
        sum(items.price) as total_sales_value,
        count(items.order_item_id) as total_items
    from items
    join orders
        on items.order_id = orders.order_id
    group by items.order_id, orders.order_date
)

select * from joined

