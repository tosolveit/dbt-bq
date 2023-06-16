

SELECT
    trip_id,
    subscriber_type,
    bikeid,
    start_time,
    start_station_id,
    end_station_id,
    duration_minutes
FROM {{ ref('bs__src_trips') }} f