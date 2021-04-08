SELECT name_question,
        name_answer,
        if(is_correct = true, 'Верно', 'Неверно') Результат
FROM answer JOIN testing USING(answer_id)
                JOIN question ON testing.question_id = question.question_id
WHERE attempt_id = 7
