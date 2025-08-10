{% macro revenue_calc(fare_col, tip_col, total_col) %}
  COALESCE({{ fare_col }}, 0) + COALESCE({{ tip_col }}, 0)
{% endmacro %}
