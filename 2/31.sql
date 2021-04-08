INSERT INTO buy_step (buy_id, step_id, date_step_beg, date_step_end)
SELECT buy.buy_id, 
       step_id, 
       Null, 
       Null
FROM buy, step
WHERE buy.buy_id = 5;

SELECT * FROM buy_step
