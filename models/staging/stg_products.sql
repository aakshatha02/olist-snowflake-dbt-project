with source as (
    select * from {{source('olist_raw', 'products')}}
    )

select 
    product_id,
    product_category_name,
    PRODUCT_NAME_LENGHT as product_name_len,
    PRODUCT_DESCRIPTION_LENGHT as product_desc_len,
    PRODUCT_PHOTOS_QTY,
    PRODUCT_WEIGHT_G,
    PRODUCT_LENGTH_CM,
    PRODUCT_HEIGHT_CM,
    PRODUCT_WIDTH_CM
from source