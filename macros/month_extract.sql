{% macro month_extract(date_col) %}
  FORMAT_DATE('%Y-%m', DATE({{ date_col }}))
{% endmacro %}
