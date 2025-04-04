# Creating a Database
CREATE DATABASE assignment;

# Selecting the given database
USE  assignment;

# Creating a table
CREATE TABLE PRODUCT(
	PRODUCT_ID INT,
    PRODUCT_NAME VARCHAR(20),
    QUANTITY INT,
    PRICE FLOAT
);

# DROP A TABLE
DROP TABLE PRODUCT;

# CREATING A NEW TABLE
CREATE TABLE PRODUCT(
	PRODUCT_ID INT PRIMARY KEY,
    PRODUCT_NAME VARCHAR(50),
    QUANTITY INT,
    PRICE FLOAT
);

CREATE TABLE CUSTOMER(
	CUSTOMER_ID INT PRIMARY KEY,
    CUSTOMER_NAME VARCHAR(50),
    PHONE INT
);

# SHOWING ALL TABLES
SHOW TABLES;

# INSERT DATA INTO TABLES
INSERT INTO PRODUCT 
VALUES
(1001, 'salt', 10, 11),
(1002, 'milk', 11, 56),
(1003, 'tea', 10, 80),
(1004, 'suger', 10, 65),
(1005, 'biscuits', 10, 15);

INSERT INTO CUSTOMER
VALUES
(1,'VAIBHAV',123456789),
(2, 'MADHUMEETA', 213456789),
(3, 'NEERAJ', 312456789),
(4, 'RAGHAV', 412356789),
(5, 'ANANDEE', 512346789);

# Getting the data
SELECT * FROM 
PRODUCT;

SELECT * FROM
CUSTOMER;

SELECT PRODUCT_NAME, PRICE
FROM PRODUCT;

# WHERE CLAUSE
SELECT * FROM 
PRODUCT
WHERE PRICE <=56;

#Updating the data
Update PRODUCT
SET PRODUCT_NAME = 'cookies'
WHERE PRODUCT_NAME = 'salt';

# Setting SQL_SAFE_UPDATES to 0
SET SQL_SAFE_UPDATES = 0;

SELECT * FROM 
PRODUCT;

# Setting SQL_SAFE_UPDATES to 1
SET SQL_SAFE_UPDATES = 1;

#  AND Operator
SELECT * FROM 
PRODUCT 
WHERE QUANTITY >10 AND PRICE >50;

# OR Operator
SELECT * FROM 
PRODUCT 
WHERE QUANTITY >10 OR PRICE < 50;

# ORDER BY 
SELECT *
FROM PRODUCT
ORDER BY PRODUCT_NAME DESC;

SELECT * FROM
CUSTOMER;

Select *
FROM CUSTOMER
WHERE CUSTOMER_NAME LIKE '%N%';

# Dropping the table
DROP TABLE CUSTOMER;