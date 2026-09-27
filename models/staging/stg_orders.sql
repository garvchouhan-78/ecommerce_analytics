with source_data as (
    select *
    from {{ source('ecommerce', 'RAW_ORDERS') }}
),

renamed as (

    select
        cast(order_id as integer) as order_id,
        cast(customer_id as integer) as customer_id,
        cast(order_date as date) as order_date,
        cast(status as varchar) as status,
        cast(total_amount as integer) as total_amount,
        cast( currency as varchar) as currency,
        cast( updated_at as timestamp) as updated_at

    from source_data
)

select *
from renamed