{% macro percent_calc(numerator, denominator) %}
  SAFE_DIVIDE({{ numerator }}, NULLIF({{ denominator }}, 0)) * 100
{% endmacro %}
