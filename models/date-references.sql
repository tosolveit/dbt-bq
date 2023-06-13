WITH base_dates AS (
    {{ dbt_date.get_base_dates(start_date='2013-12-21', end_date='2050-12-31') }}
),

date_dimension AS (
  SELECT
    date_day                         AS date_key,
    EXTRACT(YEAR FROM date_day)      AS year,
    EXTRACT(QUARTER FROM date_day)   AS quarter,
    EXTRACT(MONTH FROM date_day)     AS month,
    EXTRACT(WEEK FROM date_day)      AS week,
    EXTRACT(DAY FROM date_day)       AS day,
    EXTRACT(DAYOFWEEK FROM date_day) AS day_of_week,
    FORMAT_DATE('%A', date_day)      AS weekday_name
FROM base_dates
)

SELECT
    *,
    MOD(day_of_week + 5,7)+1         AS day_of_week_monday_zero_index
FROM date_dimension
--ORDER BY date_key

