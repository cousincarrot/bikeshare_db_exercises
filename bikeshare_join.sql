SELECT
    t.trip_id,
    t.start_station,
    s.lat,
    s.long
FROM
    trips t
LEFT OUTER JOIN
    stations s
ON
    t.start_station = s.name
ORDER BY start_station