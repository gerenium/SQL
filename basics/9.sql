SELECT author,
       SUM(price*amount) AS Стоимость,
       round(SUM(price*amount)*0.18/(1+0.18),2) AS НДС,
       round(SUM(price*amount)/(1+0.18),2) AS Стоимость_без_НДС
FROM book
GROUP BY author;
