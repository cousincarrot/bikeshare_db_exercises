SELECT
	dockcount,
    (CASE WHEN dockcount > 20 THEN 'large' ELSE 'small' END) station_size,
    COUNT(*) as station_count
FROM 
    stations
GROUP BY 2
ORDER BY dockcount DESC