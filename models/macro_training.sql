{# This is a comment#}

--This will appear in SQL compile
{% set name="training"%}

{{name}}

SELECT
{% set table_names=["VCID", "VCName"]%}
{% for table in table_names %}
{{table}}{% if not loop.last%},{%endif%}
{%endfor%}

FROM {{ref('stg_student_vc')}}

