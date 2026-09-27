{{ config(
    materialized='incremental',
    incremental_strategy='merge',
    unique_key='order_id',
    on_schema_change='sync_all_columns'
) }}

with source_data as (

    select *
    from {{ ref('int_orders_joined_payments') }}

    {% if is_incremental() %}

        where order_date >= (
            select dateadd(
                day,
                -3,
                coalesce(max(order_date), '1900-01-01')
            )
            from {{ this }}
        )

    {% endif %}

),

renamed as (

    select
        cast(order_id as integer) as order_id,
        cast(customer_id as integer) as customer_id,
        cast(order_date as date) as order_date,
        cast(status as varchar) as status,
        cast(total_amount as integer) as total_amount,
        cast(currency as varchar) as currency,
        cast(updated_at as timestamp) as updated_at,
        cast(payment_id as integer) as payment_id,
        cast(payment_method as varchar) as payment_method,
        cast(payment_status as varchar) as payment_status,
        cast(updated_at as date) as payment_updated_at

    from source_data

)

select *
from renamed