SELECT
    {{ month_extract('pickup_datetime') }} AS month,
    AVG(trip_distance) AS avg_distance
FROM {{ ref('stg_taxi_trips') }}
GROUP BY month
ORDER BY month
