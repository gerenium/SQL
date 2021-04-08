SELECT
    name_subject,
    CONCAT(LEFT(name_question, 30), '...') Вопрос,
    COUNT(answer.answer_id) Всего_ответов,
    ROUND(SUM(is_correct)/COUNT(answer.answer_id) * 100, 2) Успешность
FROM 
    subject 
    JOIN question USING(subject_id)
    JOIN answer USING(question_id)
    JOIN testing USING(answer_id)
GROUP BY name_subject, 
        name_question
ORDER BY 
    1,4 DESC, 2
