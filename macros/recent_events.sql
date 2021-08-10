{% macro recent_events(column_name,dev_days=2) %}

where {{ column_name }} >= dateadd('year', - {{ dev_days }}, current_timestamp)

{% endmacro %}

--{% if target.name == 'dev' %}
--{% endif %}