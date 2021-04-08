SELECT name,
        number_plate,
        violation
FROM fine
GROUP BY number_plate, name, violation
HAVING count(number_plate)>1
