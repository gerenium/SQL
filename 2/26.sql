SELECT buy_id, 
       name_step
FROM buy JOIN buy_step
         USING(buy_id)
                JOIN step
                USING(step_id)
WHERE date_step_beg IS NOT NULL AND date_step_end IS NULL
ORDER BY buy_id
