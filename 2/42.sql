SELECT departure_city
FROM bookings.flights_v
GROUP BY departure_city
HAVING COUNT(flight_id) IN (SELECT COUNT(flight_id)
									FROM bookings.flights_v
									GROUP BY departure_city
									ORDER BY 1 DESC
									LIMIT 5)
ORDER BY COUNT(flight_id) DESC
