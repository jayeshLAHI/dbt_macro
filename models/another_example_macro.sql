{% set columns=adapter.get_columns_in_relation(ref('stg_student_vc'))%}
SELECT

{% for column in columns %}
    {{column.name}}{% if not loop.last%},{%endif%}
    {%endfor%}
    FROM
    {{ source('all_students', 'VC2') }}

