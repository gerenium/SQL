SELECT name_program
FROM program 
     JOIN program_subject USING (program_id) 
      JOIN subject USING(subject_id)
Where name_subject = 'Математика' 
      OR name_subject = 'Информатика'
GROUP BY name_program
HAVING COUNT(name_subject) = 2
ORDER BY name_program
