

  create or replace view `fair-gist-467212-e2`.`ny_taxi_proccessed_ny_taxi_proccessed`.`daily_revenue`
  OPTIONS()
  as WITH trips AS (
    SELECT
        DATE(pickup_datetime) AS trip_date,
        COUNT(*) AS trip_count,
        SUM(
  COALESCE(fare_amount, 0) + COALESCE(tip_amount, 0)
) AS revenue
    FROM `fair-gist-467212-e2`.`ny_taxi_proccessed_ny_taxi_proccessed`.`stg_taxi_trips`
    WHERE 
  DATE(pickup_datetime) BETWEEN DATE('2022-01-01') AND DATE('2022-12-31')

    GROUP BY trip_date
)
SELECT * FROM trips
ORDER BY trip_date;

