SELECT 
    name_program
FROM 
    program_subject
    JOIN program USING(program_id)
GROUP BY 
     name_program
HAVING 
    MIN(min_result) > 39
ORDER BY 
     name_program
