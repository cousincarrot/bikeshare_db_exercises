SELECT
	s.name Station_Name,
	COUNT(*) Number_of_Trips,
	s.dockcount Number_of_Docks
FROM
	trips t
JOIN
	stations s
ON
	t.start_station = s.name
GROUP BY
	s.name
ORDER BY s.dockcount DESC