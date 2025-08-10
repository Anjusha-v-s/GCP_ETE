WITH trips AS (
    SELECT
        pickup_location_id,
        dropoff_location_id,
        {{ revenue_calc('fare_amount', 'tip_amount', 'total_amount') }} AS revenue
    FROM {{ ref('stg_taxi_trips') }}
)
SELECT
    pickup_zone.Zone AS pickup_area,
    drop_zone.Zone AS drop_area,
    SUM(revenue) AS total_revenue
FROM trips
{{ zone_lookup('pickup_location_id', 'dropoff_location_id') }}
GROUP BY pickup_area, drop_area
ORDER BY total_revenue DESC
LIMIT 10
