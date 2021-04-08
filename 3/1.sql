UPDATE fine,
       (SELECT name, 
       number_plate,
       violation 
       FROM fine 
       GROUP BY number_plate, 
                name,
                violation
       HAVING count(*)>1) AS at
       
SET fine.sum_fine = 2*fine.sum_fine
WHERE fine.name=at.name AND fine.number_plate=at.number_plate AND date_payment IS null;

SELECT *
FROM fine;
