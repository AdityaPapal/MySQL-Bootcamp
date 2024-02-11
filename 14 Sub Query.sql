SHOW DATABASES;
USE collage; 

SHOW TABLES;
SHOW TABLES;
SELECT * FROM student;

SELECT AVG(Marks) FROM Student;

SELECT Full_Name, Marks FROM Student WHERE Marks > 87.72;

# using sub query 
SELECT Full_Name, Marks FROM Student WHERE Marks > (SELECT AVG(Marks) FROM Student);


# find even roll number stuedents
SELECT Full_Name FROM Student WHERE MOD(Roll_No,2) = 0;