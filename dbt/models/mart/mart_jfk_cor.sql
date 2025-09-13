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

SELECT * FROM prep_weather_hourly

-- THE QUESTION IF I want to join the hour in weather is a complete hour 
-- The hour in flights sometimes we have 1.30 1.32 