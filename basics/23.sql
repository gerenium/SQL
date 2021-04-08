SELECT MONTHNAME(date_first) AS "Месяц",
       COUNT(date_first) AS "Количество"
FROM trip
GROUP BY MONTHNAME(date_first)
ORDER BY 2 DESC, 1
