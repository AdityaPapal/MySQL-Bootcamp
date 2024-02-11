CREATE DATABASE db3;
USE db3;

CREATE TABLE std_info(
	Id INT PRIMARY KEY,
    Std_Name VARCHAR(100)
);

INSERT INTO Std_info(Id,Std_Name) VALUES
	(1,"Adam"),
    (2,"Bob"),
    (3,'Casey');
    
SELECT * FROM Std_info;

CREATE TABLE Course(
	Id INT PRIMARY KEY,
    Course VARCHAR(100)
);

INSERT INTO Course(Id,Course) VALUES
	(1,"English"),
    (2,"Maths"),
    (3,"Science"),
    (4,"Computer Science");
    
SELECT * FROM Course;

INSERT INTO Std_Info(ID,Std_Name) VALUES
	(101,"ABC"),   
    (102,"XYZ");

# Inner Join
SELECT * 
FROM Std_info
INNER JOIN Course
on Std_info.Id = Course.Id;



# Left Join
SELECT * 
FROM Std_info as s
LEFT JOIN Course as c
on s.Id = c.Id;

# Right Join
SELECT * 
FROM Std_info as s
RIGHT JOIN Course as c
on s.Id = c.Id;


# FULL JOIN
SELECT * 
FROM Std_info as s
LEFT JOIN Course as c
on s.Id = c.Id
UNION 
SELECT *
FROM Std_info as s
RIGHT JOIN Course as c
on s.Id = c.Id;

# LEFT EXCLUSIVE JOIN
SELECT * 
FROM Std_info as s
LEFT JOIN Course as c
on s.Id = c.Id
WHERE c.Id IS NULL;

# Right EXCLUSIVE JOIN
SELECT * 
FROM Std_info as s
RIGHT JOIN Course as c
on s.Id = c.Id
WHERE c.Id IS NULL;
