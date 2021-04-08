create table dep1(dep1_id int primary key, num int, client int, balance int, currency varchar(3), status varchar(10));
    
INSERT INTO dep1 SELECT *  FROM dep;

UPDATE dep1
SET balance = balance * 91.59 WHERE currency = 'EUR'; 
UPDATE dep1
SET balance = balance * 75.22 WHERE currency = 'USD';
UPDATE dep1
SET balance = balance * 103.29 WHERE currency = 'GBR';

SELECT DISTINCT contact.client, 
                SUM(balance)
FROM dep1 
    JOIN contact ON client_id = dep1.client
GROUP BY contact.client;
