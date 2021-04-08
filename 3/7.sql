SELECT  YEAR(date_payment) AS Год, 
        MONTHNAME(date_payment) Месяц, 
        sum(price * amount) Сумма
FROM 
    buy_archive
GROUP BY YEAR(date_payment), MONTHNAME(date_payment) 
UNION
SELECT  YEAR(date_step_end) AS Год, 
        MONTHNAME(date_step_end) Месяц, 
        sum(price * buy_book.amount) Сумма
FROM 
    book 
     JOIN buy_book USING(book_id)
     JOIN buy USING(buy_id) 
     JOIN buy_step USING(buy_id)
     JOIN step USING(step_id)  
WHERE  date_step_end IS NOT Null
        AND name_step = "Оплата"
GROUP BY YEAR(date_step_end), MONTHNAME(date_step_end) 
ORDER BY Месяц
