SELECT
    name_program 
FROM
    subject 
    JOIN program_subject USING(subject_id)
    JOIN program USING(program_id)
WHERE 
    name_subject = 'Информатика'
