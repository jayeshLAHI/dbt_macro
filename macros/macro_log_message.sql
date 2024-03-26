{% macro post_model_hook(model_name) %}
    do $$
    begin
        raise notice 'Jayesh, Your Model execution completed: %', '{{ model_name }}';
    end $$;
{% endmacro %}
