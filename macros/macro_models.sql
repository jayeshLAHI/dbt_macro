{% macro generate_models() %}
  {%- for table in adapter.list_tables(schema=var('all_students')) -%}
    {{ dbt_utils.generate_schema_and_alias(table=table, alias='stg_' + table) }}
  {%- endfor -%}
{% endmacro %}
