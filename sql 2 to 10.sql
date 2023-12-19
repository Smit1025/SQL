-- Create Employee table

CREATE TABLE Employee_tb (
    id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary DECIMAL(10, 2),
    date DATETIME,
    department VARCHAR(50)
);

-- Insert data into Employee table

INSERT INTO Employee_tb (id, first_name, last_name, salary, date, department) VALUES
(1, 'john', 'abraham', 100000, '2013-01-01 12:00:00', 'banking'),
(2, 'michael', 'clarke', 800000, '2013-01-01 12:00:00', 'insurance'),
(3, 'roy', 'thomas', 700000, '2013-01-01 12:00:00', 'banking'),
(4, 'tom', 'jose', 600000, '2013-01-01 12:00:00', 'insurance'),
(5, 'jerry', 'pinto', 650000, '2013-01-01 12:00:00', 'insurance'),
(6, 'philip', 'mathew', 750000, '2013-01-01 12:00:00', NULL),
(7, 'testname1', '123', 650000, '2013-01-01 12:00:00', NULL),
(8, 'test name2', 'lname%', 600000, '2013-01-01 12:00:00', NULL);

-- Create Incentive table

CREATE TABLE Incentive_tb (
    id INT,
    date DATE,
    amount DECIMAL(10, 2)
);

-- Insert data into Incentive table
INSERT INTO Incentive_tb (id, date, amount) VALUES
(1, '2013-02-01', 5000),
(2, '2013-02-01', 3000),
(3, '2013-02-01', 4000),
(1, '2013-01-01', 45000),
(2, '2013-01-01', 35000);

-- Show Employee table
SELECT * FROM Employee_tb;

-- show Incentive table
SELECT * FROM Incentive_tb;

-- Get First_Name from Employee table using Tom name "Employee Name"

SELECT first_name FROM Employee_tb
WHERE first_name = 'tom';

-- Get FIRST_NAME, Joining Date, and Salary from employee table

SELECT first_name, date AS "Joining Date", salary FROM Employee_tb;

-- Get all employee details from the employee table order by First_Name Ascending and Salary Descending

SELECT * FROM Employee_tb ORDER BY first_name ASC, salary DESC;

-- Get employee details from employee table whose first name contains ‘J’

SELECT * FROM Employee_tb WHERE first_name LIKE '%J%';

-- Get department wise maximum salary from employee table order by salary ascending

SELECT department, MAX(salary) AS max_salary FROM Employee_tb GROUP BY department ORDER BY max_salary ASC;


-- Select first_name, incentive amount from employee and incentives table for those employees who have incentives and incentive amount greater than 3000


SELECT e.first_name, i.amount
FROM Employee_tb e
JOIN Incentive_tb i ON e.id = i.id
WHERE i.amount > 3000;

-- Create After Insert trigger on Employee table which inserts not,, 
CREATE TABLE EmployeeView_tb (
    id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary INT,
    date DATE,
    department VARCHAR(50)
);

-- Create After Insert trigger  not,,   

CREATE TRIGGER after_Employee_tb_insert
AFTER INSERT ON Employee_tb
FOR EACH ROW
INSERT INTO Employee_tbView VALUES (NEW.id, NEW.first_name, NEW.last_name, NEW.salary, NEW.date, NEW.department);