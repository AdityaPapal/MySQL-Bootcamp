CREATE DATABASE IF NOT EXISTS Collage;
USE Collage;

CREATE TABLE IF NOT EXISTS std (
	Roll_num INT,
    Std_name VARCHAR(100),
    Marks INT NOT NULL,
    Grade VARCHAR(1),
    City VARCHAR(20),
    PRIMARY KEY (Roll_num)
);

INSERT INTO std (Roll_num, std_name,Marks,Grade,City) VALUES
	(1,"ABC1",95,'A',"Pune"),
	(2,"ABC2",78,'C',"Delhi"),
	(3,"ABC3",81,'B',"Mumbai"),
    (4,"ABC4",85,'B',"Pune"),
    (5,"ABC5",91,'A',"Mumbai"),
    (6,"ABC6",84,'B',"Delhi"),
    (7,"ABC7",79,'c',"Mumbai"),
    (8,"ABC8",72,'c',"Pune"),
    (9,"ABC9",34,'F',"Nashik"),
    (10,"ABC10",23,'F',"Satara");
    
SELECT * FROM std;

# arithmetic operator 
SELECT * FROM STD WHERE Marks > 80; 
SELECT * FROM STD WHERE Marks < 35 ; 
SELECT * FROM STD WHERE Marks+10 < 35 ;

# logical operator
SELECT * FROM STD WHERE Marks > 80 AND City = "Pune";  
SELECT * FROM STD WHERE Marks > 90 OR city = 'Delhi';

# In  
SELECT * FROM STD WHERE City IN ("Pune","Mumbai");
SELECT * FROM STD WHERE City NOT IN ("Pune","Mumbai");

# betweeen 
SELECT * FROM STD WHERE Marks BETWEEN 80 AND 90;

# limit 
SELECT * FROM STD LIMIT 3;
SELECT * FROM STD WHERE MARKS > 80 LIMIT 3;

# oder by 
SELECT * FROM STD ORDER BY city ASC;
SELECT * FROM STD ORDER BY Marks DESC LIMIT 3;
