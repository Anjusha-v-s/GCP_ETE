SELECT
    pickup_datetime,
    dropoff_datetime,
    passenger_count,
    trip_distance,
    fare_amount,
    tip_amount,
    total_amount,
    pickup_location_id,
    dropoff_location_id,
    payment_type
FROM `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2022`