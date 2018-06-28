-- Set up the CTE to create a "locations" table.
WITH
    locations
AS (
    -- A simple query to get the averages of lat and long on a city level.
    SELECT
        city,
        AVG(lat) lat,
        AVG(long) long
    FROM
        stations
    GROUP BY 1
)

-- Joining the locations table we created with the trips table to count trips.
SELECT
    loc.city,
    loc.lat,
    loc.long,
    COUNT(*)
FROM
    locations loc

-- We need an intermediate join to go from locations to stations 
-- because the trips table does not have a "city" column.
JOIN
    stations s
ON
    loc.city = s.city
JOIN
    trips t
ON
    t.start_station = s.name
GROUP BY 1