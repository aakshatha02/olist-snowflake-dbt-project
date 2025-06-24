with source as (
    select * from {{source('olist_raw', 'order_items')}}
)

select 
    order_id,
    order_item_id,
    product_id,
    seller_id,
    shipping_limit_date as shipping_limit_ts ,
    price,
    freight_value
from source


-- select * from cleaned
