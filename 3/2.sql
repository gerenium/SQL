UPDATE fine,
       payment
SET fine.date_payment=payment.date_payment
WHERE fine.name=payment.name 
       AND fine.number_plate = payment.number_plate 
       AND fine.violation=payment.violation 
       AND fine.date_violation = payment.date_violation;


UPDATE fine,
       payment
SET fine.sum_fine = fine.sum_fine/2
WHERE DATEDIFF(fine.date_payment, fine.date_violation)+1<=20 
       AND fine.name=payment.name 
       AND fine.number_plate = payment.number_plate 
       AND fine.violation=payment.violation 
       AND fine.date_violation = payment.date_violation;


SELECT name,
    number_plate,
    violation,
    sum_fine,
    date_violation, 
    date_payment 
FROM fine
