SELECT distinct(origin_city)
FROM Flights 
WHERE origin_city not in 
		(select distinct(origin_city)
		FROM Flights 
		WHERE dest_city = 'Seattle WA'
		GROUP BY origin_city) 
	and origin_city not in 
		(SELECT distinct(origin_city)
		FROM Flights 
		WHERE dest_city in 
			(SELECT distinct(origin_city)
			FROM Flights 
			WHERE dest_city = 'Seattle WA'
			GROUP BY origin_city))
GROUP BY origin_city
