-- Create Student table
CREATE TABLE Student_tb (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    branch VARCHAR(50)
);

-- Insert data into Student table
INSERT INTO Student_tb (rollno, name, branch) VALUES
(1, 'jay', 'computer sci'),
(2, 'suhani', 'electronic and com'),
(3, 'kriti', 'electronic');

-- Create Exam table
CREATE TABLE Exam_tb (
    rollno INT,
    S_code VARCHAR(50),
    marks INT,
    p_code VARCHAR(50),
    PRIMARY KEY (rollno, S_code),
    FOREIGN KEY (rollno) REFERENCES Student_tb(rollno)
);

-- Insert data into Exam table
INSERT INTO Exam_tb (rollno, S_code, marks, p_code) VALUES
(1, 'CS11', 50, 'CS'),
(1, 'CS12', 60, 'CS'),
(2, 'EC101', 66, 'EC'),
(2, 'EC102', 70, 'EC'),
(3, 'EC101', 45, 'EC'),
(3, 'EC102', 50, 'EC');

select * from Student_tb;


-- cursor
delimiter $$
create procedure Student_tb()
begin
declare cu_id int;
declare cu_name varchar(100);
declare cu_finished int default 0;
declare c2 cursor for select id, S_code from  student;
declare continue handler for not found set cu_finished=1;
open c2;  
get_data1:LOOP
             fetch c2 into cu_id,cu_S_code;
          select concat(cu_id,concat('-',cu_name));
          if cu_finished=1
                then leave get_data1;
			end if;
              end LOOP get_data1;
	close c2;
    end $$

drop procedure get_Student_tb;

call get_Student_tb;


    
    
        
        
        
        
select * from Exam_tb;


