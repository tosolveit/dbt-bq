SELECT
    trip_id,
    subscriber_type,
    bikeid,
    start_time,
    start_station_id,
    s.name  AS start_station_name,
    end_station_id,
    s2.name AS end_station_name,
    duration_minutes,
    d.year,
    d.quarter,
    d.month,
    d.week,
    d.day
FROM {{ ref('bs__fct_trips') }} f
LEFT JOIN {{ ref('bs__dim_dates') }} d
    ON DATE(start_time) = DATE(d.date_key)
LEFT JOIN {{ ref('bs__dim_stations') }} s
    ON f.start_station_id = s.station_id
LEFT JOIN {{ ref('bs__dim_stations') }} s2
    ON f.end_station_id = CAST(s2.station_id AS STRING)
