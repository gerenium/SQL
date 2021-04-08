SELECT name_department, 
       name_program, 
       plan,
       count(enrollee_id) Количество,
       round(count(enrollee_id)/plan, 2) Конкурс
FROM department 
     JOIN program USING(department_id) 
      JOIN program_enrollee USING(program_id)
GROUP BY name_department, 
         name_program,
         plan
ORDER BY Конкурс DESC
