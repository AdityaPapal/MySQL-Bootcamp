SHOW DATABASES;
SHOW TABLES;

SELECT * FROM std;

# write the query to find avg marks in each city in ascending order
SELECT City, AVG(Marks) FROM std GROUP BY City ORDER BY AVG(Marks) DESC;

SELECT Grade,COUNT(Std_name) FROM std GROUP BY Grade;

SELECT City,COUNT(Roll_num) FROM std GROUP BY City HAVING MAX(Marks) > 90;

# general order 
# SELECT - FROM - WHERE - GROUP BY - HAVING - ORDER BY 

 SELECT City
 FROM std
 WHERE Grade = 'A'
 GROUP BY City
 HAVING MAX(Marks) > 90
 ORDER BY Grade ASC; 