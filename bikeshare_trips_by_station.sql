<<<<<<< HEAD
SELECT
	start_station,
	TOTAL(start_station)
FROM
	trips
GROUP BY 1
=======
SELECT
	start_station,
	TOTAL(start_station)
FROM
	trips
GROUP BY 1
>>>>>>> 038ba9f928915142b9f7d4f8e593fd78090dc95d
ORDER BY TOTAL(start_station) DESC