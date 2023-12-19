create database pro_mast;
 
 create table produce_item(
    id int primary key,
    name varchar(50),
    price int,
    com decimal(4,2));
    
    insert into produce_item (id, name, price, com)
    values
    (101, 'modher board', 3200.00, 15),
    (102, 'key board', 450.00, 16),
    (103, 'zip drive', 250.00, 14),
    (104, 'speaker', 550.00, 16), 
    (105, 'monitor', 5000.00, 11),
    (106, 'dvd drive', 900.00, 12),
    (107, 'cd drivr', 800.00, 12),
    (108, 'printer', 2600.00, 13),
    (109, 'refill cartridge', 350.00, 13),
    (110, 'mouse', 250.00, 12);
    
    select * from produce_item;
    -- 20
    
    select id, name, price, com 
    from produce_item
    where price between 200 and 600;
    
    -- 22
    
   SELECT AVG(price) AS avg_price
FROM produce_item
WHERE com = 16;

-- 23

SELECT name, price
FROM produce_item
WHERE price >= 250
ORDER BY price DESC, name ASC;

-- 21


select mode,count(com) 
from  produce_item
group by mode
having count(com)>13;



SELECT name, price
FROM produce_item
WHERE price >= 250


-- 24 


-- before trigger


