SELECT * FROM std;

SET SQL_SAFE_UPDATES = 0;

UPDATE std 
SET Grade = 'O'
WHERE Grade = 'A';

SELECT * FROM std;

UPDATE std 
SET Grade = "D"
WHERE Grade = "F";

SELECT * FROM std;

DELETE FROM std 
WHERE Marks <= 40;

SELECT * FROM std;
