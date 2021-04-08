SELECT 
     name_program,
     plan
FROM 
    program
GROUP BY 
    name_program, 
    plan
HAVING 
    plan = (SELECT MAX(plan)
            FROM program)
