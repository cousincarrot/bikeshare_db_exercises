WITH
	rainy_weather
AS (
	SELECT
		weather.Events
	FROM
		weather
	WHERE
		weather.Events like '%Rain%'
	)

WITH
	longest_trip
AS (
	SELECT
		trips.trip_id,
		trips.duration,
		trips.zip_code
	FROM
		trips
	WHERE
		trips.trip_id = MAX(trips.trip_id)
	)
SELECT
	t.duration,
	t.zip_code,
	r.Events
FROM
	longest_trip t
JOIN
	rainy_weather r
GROUP BY t.zip_code