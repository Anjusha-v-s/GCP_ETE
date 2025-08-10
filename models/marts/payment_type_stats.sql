WITH trips AS (
    SELECT
        payment_type,
        COUNT(*) AS trips_count,
        SUM(total_amount) AS total_amount
    FROM {{ ref('stg_taxi_trips') }}
    GROUP BY payment_type
)
SELECT
    payment_type,
    trips_count,
    total_amount,
    {{ percent_calc('total_amount', 'SUM(total_amount) OVER ()') }} AS percent_of_total
FROM trips
