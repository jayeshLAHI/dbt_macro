{% macro is_weekend(date_column) %}
    extract(dow from {{ date_column }}) in (0, 6)
{% endmacro %}
