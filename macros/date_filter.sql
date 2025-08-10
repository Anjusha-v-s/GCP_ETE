{% macro date_filter(column_name, start_date, end_date) %}
  DATE({{ column_name }}) BETWEEN DATE('{{ start_date }}') AND DATE('{{ end_date }}')
{% endmacro %}
