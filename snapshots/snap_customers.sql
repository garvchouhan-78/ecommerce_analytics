{% snapshot snap_customers %}

{{
    config(
        target_schema='DEV',
        unique_key='customer_id',
        strategy='timestamp',
        updated_at='updated_at',
        invalidate_hard_deletes=true
    )
}}

SELECT
    customer_id,
    first_name,
    last_name,
    email,
    updated_at

FROM {{ ref('stg_customers') }}

{% endsnapshot %}