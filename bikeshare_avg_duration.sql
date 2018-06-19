SELECT
	end_station,
	AVG(duration)
FROM
	trips
ORDER BY end_station DESC
