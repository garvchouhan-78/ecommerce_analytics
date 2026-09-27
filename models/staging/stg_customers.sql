with source_data as (
    select *
    from {{ source('ecommerce', 'RAW_CUSTOMERS') }}
),

renamed as (

    select
        cast(customer_id as integer) as customer_id,
        cast(first_name as varchar) as first_name,
        cast(last_name as varchar) as last_name,
        cast(email as varchar) as email,
        cast(city as varchar) as city,
        cast(created_at as timestamp) as created_at,
        cast(updated_at as timestamp) as updated_at

    from source_data

)

select *
from renamed