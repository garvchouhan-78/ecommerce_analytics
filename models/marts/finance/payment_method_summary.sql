{{ config(materialized='table') }}

SELECT
    payment_method,

    COUNT(*) AS payment_count,

    {{ cents_to_dollars('amount_cents') }} AS amount_dollars

FROM {{ ref('stg_payments') }}

GROUP BY payment_method