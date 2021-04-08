INSERT INTO client
SELECT NULL, 'Попов Илья', city_id, 'popov@test'
FROM city
WHERE name_city = 'Москва';

SELECT * FROM client;
