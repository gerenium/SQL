SELECT 
    name_subject, 
    COUNT(enrollee_id) Количество,
    MAX(result) Максимум,
    MIN(result) Минимум,
    round(AVG(result),1) Среднее
FROM 
    subject 
    JOIN enrollee_subject USING(subject_id)
GROUP BY 
    name_subject
ORDER BY 
    name_subject
