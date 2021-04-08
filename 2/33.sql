SELECT name_subject, 
       COUNT(date_attempt) as Количество,
       round(AVG(result), 2) as Среднее
FROM subject 
      LEFT JOIN attempt USING(subject_id)
GROUP BY name_subject
