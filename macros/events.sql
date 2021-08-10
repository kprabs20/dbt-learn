{% macro events(column_name) %}
{% if target.name == 'dev'%}
where {{ column_name }} >= dateadd('day', -3,current_timestamp)
{% endif %}
{% endmacro %}