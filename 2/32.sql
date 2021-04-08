UPDATE buy_step
SET date_step_beg = str_to_date('12.04.2020', '%d.%m.%Y')
WHERE step_id = (SELECT step.step_id 
                 FROM step
                 WHERE name_step = 'Оплата') AND buy_id = 5;

select *
FROM buy_step
WHERE buy_id = 5;
