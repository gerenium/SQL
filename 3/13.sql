SELECT  name_student,
        name_subject,
        date_attempt,
        round((SUM(is_correct) / 3) * 100 , 2) Результат
        
FROM subject JOIN attempt using(subject_id)
               JOIN student ON attempt.student_id = student.student_id 
                  JOIN testing ON attempt.attempt_id = testing.attempt_id
                        JOIN answer USING(answer_id)

GROUP BY name_student,
        name_subject,
        date_attempt
ORDER BY name_student, date_attempt DESC
