{% macro generate_schema_name(custom_schema_name, node) -%}

    {%- if custom_schema_name is none -%}
        {{ target.schema }}

    {%- elif node.resource_type == 'seed' and custom_schema_name | upper == 'RAW' -%}
        RAW

    {%- else -%}
        {{ target.schema }}_{{ custom_schema_name | trim }}

    {%- endif -%}

{%- endmacro %}