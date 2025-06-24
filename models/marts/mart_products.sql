with source as (
    select * from {{ref('stg_products')}}
),

aggregated as (
    select 
        items.product_id,
        product_category_name,
        sum(price) as total_sales_value,
        count(order_item_id) as total_sold_qty
    from source
    join {{ref('stg_order_items')}} as items
        on items.product_id = source.product_id
    group by items.product_id, product_category_name
)

select * from aggregated
