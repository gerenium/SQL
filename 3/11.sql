SELECT name_student, 
        name_subject, 
        DATEDIFF(MAX(date_attempt), MIN(date_attempt)) AS Интервал
FROM attempt JOIN student USING(student_id)
                JOIN subject USING(subject_id)
GROUP BY name_student, name_subject
HAVING COUNT(date_attempt)>1
ORDER BY Интервал
