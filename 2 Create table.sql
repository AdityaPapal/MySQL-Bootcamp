 SHOW DATABASES;
 CREATE DATABASE IF NOT EXISTS temp;
 
 USE temp;
 
 CREATE TABLE std2 (
	id INT PRIMARY KEY,
    std_name VARCHAR(50),
    std_num VARCHAR(100)
 );
 
 INSERT INTO std2 VALUES(1,"Aditya","9156020115");
 SELECT * FROM std2; 
 
 INSERT INTO std2(id,std_name,std_num) VALUES 
 (2,"Rahul","12324343"),
 (3,"Harshal","12314343"),
 (4,"Pranav","123235435");

SELECT * FROM std2;