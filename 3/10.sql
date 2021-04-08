update buy_step
set date_step_end = str_to_date('13.04.2020', '%d.%m.%Y')
WHERE step_id = (select step_id
                 from step
                 where name_step = 'Оплата') 
                 AND buy_id = 5;
 
update buy_step
set date_step_beg = str_to_date('13.04.2020', '%d.%m.%Y')
WHERE step_id = (select step_id
                 from step
                 where name_step = 'Оплата')+1 
                 AND buy_id = 5;
            
SELECT *
FROM buy_step
WHERE buy_id = 5;
