CREATE DATABASE Product;
USE Product;
CREATE TABLE customer (
  Customer_Id INT PRIMARY KEY,
  First_name VARCHAR(20),
  Last_name VARCHAR(20),
  Email VARCHAR(20),
  Phone_no VARCHAR(12),
  Address VARCHAR(30),
  City VARCHAR(15),
  State VARCHAR(15),
  Zip_code VARCHAR(10),
  Country VARCHAR(15)
);

CREATE VIEW customer_info AS
SELECT CONCAT(First_name, ' ', Last_name) AS Full_Name, Email
FROM customer;

SELECT * FROM customer_info;

CREATE VIEW US_Customers AS
SELECT *
FROM customer
WHERE Country = 'US';

CREATE VIEW Customer_details AS
SELECT CONCAT(First_name, ' ', Last_name) AS Full_Name, Email, Phone_no
FROM customer;

UPDATE customer
SET Phone_no = '1234567890'
WHERE State = 'California';

SELECT State, COUNT(*) AS Customer_Count
FROM customer
GROUP BY State
HAVING COUNT(*) > 5;

SELECT State, COUNT(*) AS Customer_Count
FROM Customer_details
GROUP BY State;

SELECT *
FROM Customer_details
ORDER BY State ASC;
