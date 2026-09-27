with source_data as (
    select *
    from {{ source('ecommerce', 'RAW_PAYMENTS') }}
),

renamed as (
    select
        cast(payment_id as integer) as payment_id,
        cast(order_id as integer) as order_id,
        cast(amount_cents as integer) as amount_cents,
        cast(payment_method as varchar) as payment_method,
        cast(payment_status as varchar) as payment_status,
        cast(updated_at as timestamp) as updated_at
    from source_data
)

select *
from renamed