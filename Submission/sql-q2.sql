SELECT distinct(flight_num)
FROM Flights f 
JOIN Carriers c on c.cid = f.carrier_id  
WHERE ((f.origin_city = 'Seattle WA' and f.dest_city = 'Boston MA') and c.name = 'Alaska Airlines Inc.')