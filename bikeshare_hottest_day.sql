SELECT
	start_station,
	TOTAL(start_station)
FROM
	trips
GROUP BY 1