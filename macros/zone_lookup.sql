{% macro zone_lookup(pickup_col, dropoff_col) %}
  LEFT JOIN `bigquery-public-data.new_york_taxi_trips.taxi_zone_lookup` pickup_zone
    ON {{ pickup_col }} = pickup_zone.LocationID
  LEFT JOIN `bigquery-public-data.new_york_taxi_trips.taxi_zone_lookup` drop_zone
    ON {{ dropoff_col }} = drop_zone.LocationID
{% endmacro %}
