with source as (
    select * from {{source('olist_raw', 'order_payment')}}
)

select 
    ORDER_ID,
    PAYMENT_SEQUENTIAL,
    PAYMENT_TYPE,
    PAYMENT_INSTALLMENTS,
    PAYMENT_VALUE
from source