-- TO CHECK correlation between weather factors and flights data
-- there for I need to join the data and filter for JFK airport 

-- The data starts on 01.10.2012 and ends on 
-- in prep_weather_hourly we have the following NULL columns
-- columns that are all NULLS:
-- snow_mm, wind_peakgust_kmh, sun_minutes, condition_code 
--> Therefore I would remove them for a better dataset. 

SELECT
    * 
FROM prep_flights;

WITH 
weather_hourly_selected AS ( -- execluding the null colmuns. 
    SELECT
        airport_code, 
        station_id,
        timestamp AS sensor_ts,
        date AS sensor_date,
        hour::TIME AS sensor_hour, 
        month_name,
        weekday AS sensory_day,
        day_part,
        temp_c,
        dewpoint_c,
        humidity_perc,
        precipitation_mm,
        wind_direction,
        wind_speed_kmh,
        pressure_hpa
    FROM prep_weather_hourly
    ORDER BY date, hour
)
SELECT
    *
FROM weather_hourly_selected w
LEFT JOIN prep_flights p
ON w.airport_code = p.origin

SELECT * FROM prep_flights;

SELECT
    *,
    TO_CHAR(DATE_PART('hour', dep_time), 'fm0000')::TIME AS sched_dep_time
FROM prep_flights

SELECT * FROM prep_weather_hourly;

-- THE QUESTION IF I want to join the hour in weather is a complete hour 
-- The hour in flights sometimes we have 1.30 1.32
-- Using linear Interpolation 
SELECT COUNT(*) FROM prep_weather_hourly;
SELECT * FROM prep_weather_hourly WHERE pressure_hpa IS NULL;