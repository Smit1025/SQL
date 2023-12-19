-- Create salesperson table
CREATE TABLE salesperson_tb (
    no INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50),
    comm INT
);

-- Insert data into salesperson table
INSERT INTO salesperson_tb (no, name, city, comm)
VALUES
    (1001, 'peel', 'london', 12),
    (1002, 'serres', 'san jose', 13),
    (1004, 'motika', 'london', 11),
    (1007, 'rafkin', 'barcelona', 15),
    (1003, 'axeirod', 'new york', 1);

-- Create customer table
CREATE TABLE customer_tb (
    cnm INT PRIMARY KEY,
    name VARCHAR(255),
    city VARCHAR(255),
    rating INT,
    no INT
);

-- Insert data into customer table


INSERT INTO customer_tb (cnm, name, city, rating, no)
VALUES
    (201, 'hoffman', 'london roe', 100, 1001),
    (202, 'giovanne', 'san jose', 200, 1003),
    (203, 'liu', 'barcelona', 300, 1002),
    (204, 'grass', 'london', 100, 1002),
    (206, 'clemens', 'roe', 300, 1007),
    (207, 'pereira', 'barcelona', 100, 1004);

-- Display contents of the salesperson table

SELECT * FROM salesperson_tb;

-- Display contents of the customer table

SELECT * FROM customer_tb;

-- Retrieve the requested data

SELECT 
    s.no AS Salesperson_tb_No,
    s.name AS Salesperson_tb_Name,
    s.city AS Salesperson_tb_City,
    s.comm AS Salesperson_tb_Comm,
    c.cnm AS Customer_tb_No,
    c.name AS Customer_tb_Name,
    c.city AS Customer_tb_City,
    c.rating AS Customer_tb_Rating
FROM
    Salesperson_tb s
JOIN
    Customer_tb c ON s.no = c.no;
    -- 1000
    SELECT s.no AS order_no, s.name AS salesperson_tb_name, c.name AS customer_tb_name
FROM salesperson_tb s
JOIN customer_tb c ON s.no = c.no
WHERE s.comm > 1000;

--
-- Retrieve names and cities of all salespeople in London with commission above 0.12

SELECT name, city, comm FROM salesperson_tb WHERE city = 'london' AND comm > 0.12;

-- Retrieve all salespeople either in Barcelona or in London

SELECT * FROM salesperson_tb WHERE city IN ('barcelona', 'london');

-- salespeople with commission between 0.10 and 0.12 (Boundary values excluded)

SELECT * FROM salesperson_tb WHERE comm > 0.10 AND comm < 0.12;

-- rating <= 100 unless they are located in Rome

SELECT * FROM Customer_tb

WHERE rating > 100 OR (rating <= 100 AND city = 'rome');


