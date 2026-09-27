SELECT
    customer_id,
    name,
    email,
    dbt_valid_from,
    dbt_valid_to
FROM {{ ref('snap_customers') }}
WHERE customer_id = 1
ORDER BY dbt_valid_from;