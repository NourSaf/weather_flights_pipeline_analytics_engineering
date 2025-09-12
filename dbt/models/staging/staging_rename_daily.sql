-- Für staging_weather_daily
SELECT
    CASE
        WHEN airport_code = 'KLGA' THEN 'LGA'
        WHEN airport_code = 'KEWR' THEN 'EWR'
        ELSE airport_code
    END AS airport_code,
    -- andere Spalten beibehalten
    date,
    temperature,
    precipitation
FROM {{ ref('staging_weather_daily') }}