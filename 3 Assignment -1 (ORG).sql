#crete database for your campany for employee information
SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS ORG;
USE ORG;

CREATE TABLE IF NOT EXISTS worker(
	worker_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    First_name VARCHAR(25),
    Last_name VARCHAR(25),
    Salary INT(15),
    Join_date DATE,
	Department VARCHAR(20)
);
INSERT INTO worker (worker_id,First_name,Last_name,Salary,Join_date,Department) VALUES
	(1,"ABC1","XYZ1",1000000,"2024-02-01","Devloper"),
	(2,"ABC2","XYZ2",1000000,"2024-02-01","HR"),
    (3,"ABC3","XYZ3",1000000,"2024-02-01","Admin"),
    (4,"ABC4","XYZ4",1000000,"2024-02-01","Acount"),
    (5,"ABC5","XYZ5",1000000,"2024-02-01","HR"),
    (6,"ABC6","XYZ6",1000000,"2024-02-02","Devloper"),
    (7,"ABC7","XYZ7",1000000,"2024-02-02","Manger"),
    (8,"ABC8","XYZ8",1000000,"2024-02-03","HR"),
    (9,"ABC9","XYZ9",1000000,"2024-02-03","Admin"),
    (10,"ABC10","XYZ10",1000000,"2024-02-04","Testing");
    
SELECT * FROM worker;


CREATE TABLE IF NOT EXISTS Bonus(
	worker_REF_id INT,
    Bonus_amount VARCHAR(25),
    Bouus_date DATE,
    FOREIGN KEY (worker_REF_id) 
    REFERENCES worker(worker_id) ON DELETE CASCADE
);

INSERT INTO Bonus(worker_REF_id,Bonus_amount,Bouus_date) VALUES
	(1,10000,"2024-03-01"),
    (2,10000,"2024-03-01"),
    (3,10000,"2024-03-01"),
	(4,10000,"2024-03-01"),
    (5,10000,"2024-03-01"),
	(6,10000,"2024-03-01"),
    (7,10000,"2024-03-01"),
    (8,10000,"2024-03-01"),
    (9,10000,"2024-03-01"),
    (10,10000,"2024-03-01");
    
SELECT * FROM Bonus;


CREATE TABLE IF NOT EXISTS Title(
	worker_REF_id INT,
    worker_title VARCHAR(25),
    Affected_from DATE,
    FOREIGN KEY (worker_REF_id) 
		REFERENCES worker(worker_id) ON DELETE CASCADE
);

INSERT INTO Title(worker_REF_id,worker_title,Affected_from) VALUES
	(1,"Project Manager","2024-04-01"),
    (2,"Executive","2024-04-01"),
    (3,"Leed","2024-04-01"),
	(4,"Manager","2024-04-01"),
    (5,"Executive","2024-04-01"),
	(6,"Project Manager","2024-04-01"),
    (7,"Ass. Manager","2024-04-01"),
    (8,"Executive","2024-04-01"),
    (9,"Leed","2024-04-01"),
    (10,"Developer","2024-04-01");
    
SELECT * FROM Title;