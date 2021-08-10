{% macro recent_events(column_name,dev_days=2) %}
--{% if target.name == 'dev' %}
where {{ column_name }} >= dateadd('year', - {{ dev_days }}, current_timestamp)
--{% endif %}
{% endmacro %}