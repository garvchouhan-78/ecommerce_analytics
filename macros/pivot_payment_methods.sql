{% macro pivot_payment_methods(payment_method_column, amount_column) %}

    {% for method in var('payment_methods') %}

        SUM(
            CASE
                WHEN {{ payment_method_column }} = '{{ method }}'
                THEN {{ amount_column }}
                ELSE 0
            END
        ) AS {{ method }}_amount

        {% if not loop.last %},{% endif %}

    {% endfor %}

{% endmacro %}