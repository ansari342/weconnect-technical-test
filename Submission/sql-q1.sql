SELECT c.name as carrier, max(price) as max_price
FROM Flights f 
JOIN Carriers c on c.cid = f.carrier_id 
WHERE ((origin_city = 'Seattle WA' and dest_city = 'New York NY') or (origin_city = 'New York NY' and dest_city = 'Seattle WA'))
GROUP BY carrier_id
LIMIT 5