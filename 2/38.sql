INSERT INTO testing(attempt_id, question_id)
SELECT attempt_id,
       question_id
FROM  question
      INNER JOIN attempt USING (subject_id)
WHERE attempt_id = (select MAX(attempt_id) from attempt)
ORDER BY RAND()
LIMIT 3;

select * from testing;
