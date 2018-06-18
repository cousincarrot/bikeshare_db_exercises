SELECT
	MinTemperatureF,
	Events
FROM
	weather
WHERE
	((PrecipitationIn > 0) OR
	(PrecipitationIn LIKE 'T')) AND
	(Events LIKE '%Rain%')
ORDER BY MinTemperatureF