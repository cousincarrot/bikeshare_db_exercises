WITH
	trips_edit
AS (
	SELECT
		(CASE WHEN start_date like '%:%' THEN date(start_date) ELSE 'Null' END) start_date,
		duration
	FROM
		trips
)

SELECT
    t.start_date,
	w.Date,
	t.duration,
	w.Events
FROM
    trips_edit t
JOIN
    weather w
ON
    t.start_date = w.Date
WHERE
	w.Events LIKE '%Rain%'
ORDER BY t.duration DESC
LIMIT 3