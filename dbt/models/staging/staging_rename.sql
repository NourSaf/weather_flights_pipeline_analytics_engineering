-- Für staging_weather_daily
UPDATE staging_weather_daily
SET airport_code = CASE
    WHEN airport_code = 'KLGA' THEN 'LGA'
    WHEN airport_code = 'KEWR' THEN 'EWR'
    ELSE airport_code
END
WHERE airport_code IN ('KLGA', 'KEWR');

-- Für staging_weather_hourly
UPDATE staging_weather_hourly
SET airport_code = CASE
    WHEN airport_code = 'KLGA' THEN 'LGA'
    WHEN airport_code = 'KEWR' THEN 'EWR'
    ELSE airport_code
END
WHERE airport_code IN ('KLGA', 'KEWR');