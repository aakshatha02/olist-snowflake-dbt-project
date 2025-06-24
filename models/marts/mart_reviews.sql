with source as (
    select * from {{ ref('stg_order_reviews') }}
)

select
    review_id,
    order_id,
    review_score,
    review_comment_title,
    review_comment_message,
    review_created_ts
from source
