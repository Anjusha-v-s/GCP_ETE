WITH trips AS (
    SELECT
        DATE(pickup_datetime) AS trip_date,
        COUNT(*) AS trip_count,
        SUM({{ revenue_calc('fare_amount', 'tip_amount', 'total_amount') }}) AS revenue
    FROM {{ ref('stg_taxi_trips') }}
    WHERE {{ date_filter('pickup_datetime', '2022-01-01', '2022-12-31') }}
    GROUP BY trip_date
)
SELECT * FROM trips
ORDER BY trip_date
