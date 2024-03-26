{#
    Does not appear in SQL
#}
--Appears in SQL
{% set my_list = ['a', 'b', 'c'] %}
SELECT
{% for item in my_list %}
{{ item }}{% if not loop.last %},{% endif %}
{% endfor %}
{{ my_list }}