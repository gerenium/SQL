DELETE 
FROM attempt
WHERE DATEDIFF(date_attempt, str_to_date('01.05.2020', '%d.%m.%Y')) < 0; 

select *
from attempt;

select *
from testing;
