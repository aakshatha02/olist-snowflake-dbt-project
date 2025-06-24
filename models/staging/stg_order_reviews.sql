with source as (
    select * from {{ source('olist_raw', 'order_reviews') }}
)

select
    review_id,
    order_id,
    review_score,
    review_comment_title,
    review_comment_message,
    review_creation_date as review_created_ts,
    review_answer_timestamp as review_answered_ts
from source
