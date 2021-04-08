UPDATE fine f,
        traffic_violation tv
SET f.sum_fine = tv.sum_fine
WHERE f.sum_fine IS null AND f.violation = tv.violation;
SELECT *
FROM fine;
