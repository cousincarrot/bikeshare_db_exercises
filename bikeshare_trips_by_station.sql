SELECT
	start_station,
	TOTAL(start_station)
FROM
	trips
GROUP BY 1
ORDER BY TOTAL(start_station) DESC