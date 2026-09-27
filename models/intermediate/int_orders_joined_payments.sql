{{ config(materialized='ephemeral') }}

with orders as (

    select *
    from {{ ref('stg_orders') }}

),

payments as (

    select *
    from {{ ref('stg_payments') }}

),

joined as (

    select
        o.order_id,
        o.customer_id,
        o.order_date,
        o.status,
        o.total_amount,
        o.currency,
        o.updated_at,
        p.payment_id,
        p.payment_method,
        p.payment_status,
        p.updated_at as payment_updated_at

    from orders o

    left join payments p
        on o.order_id = p.order_id

)

select *
from joined