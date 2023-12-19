create database statement;
 
 create table salespeople (
    id int primary key,
    name varchar(50),   
	city varchar(50),
    com decimal(4,2));
    
    insert into salespeople (id, name, city, com)
    values
    
    (5001, 'james hoog', 'new youk', 0.15),
    (5002, 'nail knite', 'paris', 0.13),
    (5005, 'pit alex', 'london', 0.11),
    (5006, 'mc lyon', 'paris', 0.14),
    (5007, 'paul adam', 'rome', 0.13),
    (5003, 'lauson hen', 'san jose', 0.12);
    
    select * from salespeople;