SELECT
    CASE
        WHEN airport_code = 'KLGA' THEN 'LGA'
        WHEN airport_code = 'KEWR' THEN 'EWR'
        ELSE airport_code
    END AS airport_code,
    -- alle anderen Spalten übernehmen
    timestamp,
    temperature,
    wind_speed,
    precipitation
FROM {{ ref('staging_weather_hourly') }}