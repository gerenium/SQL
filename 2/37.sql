INSERT INTO attempt 
SELECT null,
       student_id, 
       subject_id, 
       now(),
       null
FROM 
    student
    JOIN attempt USING(student_id)
    JOIN subject USING(subject_id)
WHERE name_student = 'Баранов Павел' 
      AND name_subject = 'Основы баз данных' ;
select * 
from attempt
