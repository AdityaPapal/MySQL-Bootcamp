SHOW DATABASES;
USE collage;

SHOW TABLES;

SELECT * FROM Student;

CREATE VIEW view_teacher AS
SELECT Roll_No,Full_Name,Marks FROM Student;

SELECT * FROM view_teacher;