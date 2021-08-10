{% macro events(column_name,dev_days=3) %}
{% if target.name == 'dev' %}
where {{ column_name }} >= dateadd('day', - {{ dev_days }}, current_timestamp)
{% endif %}
{% endmacro %}