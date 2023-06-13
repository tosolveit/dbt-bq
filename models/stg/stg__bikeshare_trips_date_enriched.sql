{{ config(
    tags=['staging']
    )
}}

SELECT
    t.*,
    d.*
FROM {{ ref('src__bikeshare_trips')}} t
INNER JOIN {{ ref('date-references') }} d
    ON DATE(t.start_time) = DATE(d.date_key)