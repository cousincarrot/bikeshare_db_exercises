SELECT
    stations.station_id,
	status.docks_available,
	COUNT(*)
FROM
    status
JOIN
    stations
ON
    status.station_id = stations.station_id
WHERE
	status.docks_available = 0
GROUP BY
	stations.station_id
ORDER BY COUNT(*) DESC
