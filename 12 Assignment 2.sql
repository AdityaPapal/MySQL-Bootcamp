SHOW DATABASES;
USE collage;

SHOW TABLES;

SELECT * FROM Student;

# Que1: Change the name of column "Std_name" to "Full Name"
ALTER TABLE Student
CHANGE Std_name Full_Name VARCHAR(500);

# Que2: Delete all the students whho scored marks less than 80
DELETE FROM Student
WHERE Marks < 80;

# Que3: Delete the column for grade 
ALTER TABLE Student
DROP COLUMN Grade;

SELECT * FROM Student;