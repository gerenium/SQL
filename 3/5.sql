SELECT buy.buy_id, DATEDIFF(date_step_end, date_step_beg) AS Количество_дней, CASE
        when datediff(date_step_end, date_step_beg) > city.days_delivery
        then datediff(date_step_end, date_step_beg) - city.days_delivery
        else 0
        end as Опоздание 
FROM city JOIN client
          USING(city_id)
                JOIN buy
                USING(client_id)
                        JOIN buy_step
                        USING(buy_id)
                        
WHERE step_id = 3 AND date_step_end IS NOT NULL
