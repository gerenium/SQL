SELECT name_city, count(buy.buy_id) as Количество
FROM city INNER JOIN client
ON client.city_id = city.city_id
   INNER JOIN buy
   ON buy.client_id = client.client_id
GROUP BY name_city
ORDER BY Количество DESC 
