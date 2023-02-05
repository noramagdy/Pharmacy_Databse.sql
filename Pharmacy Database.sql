CREATE TABLE Pharmacist (
phar_id NUMBER(20) NOT NULL,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
gender VARCHAR(50) NOT NULL,
age NUMBER(20) NOT NULL,
contact_address VARCHAR(50) NOT NULL,
admin_email VARCHAR(50) NOT NULL,
admin_password NUMBER(30) NOT NULL,
CONSTRAINT Pharmacist_pk PRIMARY KEY (phar_id)
);

INSERT ALL
INTO Pharmacist (phar_id, first_name, last_name, gender, age, contact_address, admin_email, admin_password) 
VALUES (1, 'Ahmed', 'Mohamed', 'Male', 30, 'El Minia', 'admin1@gmail.com', 11111111)
INTO Pharmacist (phar_id, first_name, last_name, gender, age, contact_address, admin_email, admin_password) 
VALUES (2, 'Ali', 'Monaim', 'Male', 18, 'El Minia', 'admin2@gmail.com', 22222222)
INTO Pharmacist (phar_id, first_name, last_name, gender, age, contact_address, admin_email, admin_password) 
VALUES (3, 'Heba', 'Mohamed', 'Female', 45, 'El Minia', 'admin3@gmail.com', 33333333)
INTO Pharmacist (phar_id, first_name, last_name, gender, age, contact_address, admin_email, admin_password) 
VALUES (4, 'Mona', 'Esmail', 'FemaLe', 20, 'El Minia', 'admin4@gmail.com', 44444444)
INTO Pharmacist (phar_id, first_name, last_name, gender, age, contact_address, admin_email, admin_password) 
VALUES (5, 'Menna', 'Sameh', 'Female', 28, 'El Minia', 'admin5@gmail.com', 55555555)
SELECT * FROM dual;
SELECT * FROM Pharmacist;

CREATE TABLE Medicines (
phar_id NUMBER(20) NOT NULL,
med_id NUMBER(20) NOT NULL,
med_category VARCHAR(50) NOT NULL,
name VARCHAR(50) NOT NULL,
description VARCHAR(50) NOT NULL,
price NUMBER(20) NOT NULL,
CONSTRAINT Medicines_pk PRIMARY KEY (med_id),
CONSTRAINT phar_id_fk FOREIGN KEY(phar_id) REFERENCES Pharmacist(phar_id)
);

INSERT ALL
INTO Medicines(phar_id, med_id, med_category, name, description, price)
VALUES(1, 6, 'capsules', 'panadol', 'treat fever and mild to moderate pain', 45)
INTO Medicines(phar_id, med_id, med_category, name, description, price)
VALUES(2, 7, 'drops', 'clidasol', 'treat acne', 10)
INTO Medicines(phar_id, med_id, med_category, name, description, price)
VALUES(3, 8, 'solution', 'renu', 'cleans all soft contact lenses', 100)
INTO Medicines(phar_id, med_id, med_category, name, description, price)
VALUES(4, 9, 'liquid', 'orovex', 'mouthwash', 50)
INTO Medicines(phar_id, med_id, med_category, name, description, price)
VALUES(5, 10, 'cream', 'mondo', 'skin care and protection', 50)
SELECT * FROM dual;
SELECT * FROM Medicines;

CREATE TABLE Customer (
cust_id NUMBER(20) NOT NULL,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
gender VARCHAR(50) NOT NULL,
age NUMBER(20) NOT NULL,
contact_address VARCHAR(50) NOT NULL,
cust_email VARCHAR(50) NOT NULL,
cust_password NUMBER(30) NOT NULL,
CONSTRAINT Customer_pk PRIMARY KEY(cust_id)
);

INSERT ALL
INTO Customer(cust_id, first_name, last_name, gender, age, contact_address, cust_email, cust_passWOrd)
VALUES (11, 'Samy', 'Mahmoud', 'Male', 50, 'El Minia', 'cust1@gmail.com', 6666666)
INTO Customer(cust_id, first_name, last_name, gender, age, contact_address, cust_email, cust_passWOrd)
VALUES (12, 'Selim', 'Hamed', 'Male', 45, 'El Minia', 'cust2@gmail.com', 7777777)
INTO Customer(cust_id, first_name, last_name, gender, age, contact_address, cust_email, cust_passWOrd)
VALUES (13, 'Fatma', 'Ashraf', 'Female', 23, 'El Minia', 'cust3@gmail.com', 8888888)
INTO Customer(cust_id, first_name, last_name, gender, age, contact_address, cust_email, cust_passWOrd)
VALUES (14, 'Aml', 'Helmy', 'Female', 25, 'El Minia', 'cust4@gmail.com', 9999999)
INTO Customer(cust_id, first_name, last_name, gender, age, contact_address, cust_email, cust_passWOrd)
VALUES (15, 'Sondos', 'Sadek', 'Female', 42, 'El Minia', 'cust5@gmail.com', 10101010101010)
SELECT * FROM dual;
SELECT * FROM Customer;

CREATE TABLE Purchaising (
phar_id NUMBER(20) NOT NULL,
med_id NUMBER(20) NOT NULL,
purchaise_id NUMBER(20) NOT NULL,
amount NUMBER(20) NOT NULL,
pdate DATE NOT NULL,
CONSTRAINT Purchaising_pk PRIMARY KEY(purchaise_id),
CONSTRAINT phar_id_fk1 FOREIGN KEY(phar_id) REFERENCES Pharmacist(phar_id),
CONSTRAINT med_id_fk1 FOREIGN KEY(med_id) REFERENCES Medicines(med_id)
);

INSERT ALL
INTO Purchaising(phar_id, med_id, purchaise_id, amount, pdate)
VALUES(1, 6, 16, 1400, DATE '2022-12-12') 
INTO Purchaising(phar_id, med_id, purchaise_id, amount, pdate)
VALUES(2, 7, 17, 2000, DATE '2010-09-25') 
INTO Purchaising(phar_id, med_id, purchaise_id, amount, pdate)
VALUES(3, 8, 18, 3200, DATE '2018-02-20') 
INTO Purchaising(phar_id, med_id, purchaise_id, amount, pdate)
VALUES(4, 9, 19, 3000, DATE '2002-07-25') 
INTO Purchaising(phar_id, med_id, purchaise_id, amount, pdate)
VALUES(5, 10, 20, 4500, DATE '2005-10-05') 
SELECT * FROM dual;
SELECT * FROM Purchaising;

CREATE TABLE Sales (
phar_id NUMBER(20) NOT NULL,
cust_id NUMBER(20) NOT NULL,
med_id NUMBER(20) NOT NULL,
sales_id NUMBER(20) NOT NULL,
scount NUMBER(20) NOT NULL,
purchaise_id NUMBER(20) NOT NULL,
sdate DATE NOT NULL,
total_amount INTEGER NOT NULL,
CONSTRAINT Sales_pk PRIMARY KEY(sales_id),
CONSTRAINT phar_id_fk2 FOREIGN KEY(phar_id) REFERENCES Pharmacist(phar_id),
CONSTRAINT cust_id_fk FOREIGN KEY(cust_id) REFERENCES Customer(cust_id),
CONSTRAINT med_id_fk2 FOREIGN KEY(med_id) REFERENCES Medicines(med_id)
);

INSERT ALL
INTO Sales(phar_id, cust_id, med_id, sales_id, scount, purchaise_id, sdate, total_amount)
VALUES (1, 11, 6, 21, 100, 16, DATE '2022-03-02', 500)
INTO Sales(phar_id, cust_id, med_id, sales_id, scount, purchaise_id, sdate, total_amount)
VALUES (2, 12, 7, 22, 80, 17, DATE '2001-05-07', 223)
INTO Sales(phar_id, cust_id, med_id, sales_id, scount, purchaise_id, sdate, total_amount)
VALUES (3, 13, 8, 23, 58, 18, DATE '2022-09-04', 442)
INTO Sales(phar_id, cust_id, med_id, sales_id, scount, purchaise_id, sdate, total_amount)
VALUES (4, 14, 9, 24, 90, 19, DATE '2004-05-11', 503)
INTO Sales(phar_id, cust_id, med_id, sales_id, scount, purchaise_id, sdate, total_amount)
VALUES (5, 15, 10, 25, 70, 20, DATE '2009-10-30', 320)
SELECT * FROM dual;
SELECT * FROM Sales;

CREATE TABLE Reports (
phar_id NUMBER(20) NOT NULL,
purchaise_id NUMBER(20) NOT NULL,
sales_id NUMBER(20) NOT NULL,
report_id NUMBER(20) NOT NULL,
rdate DATE NOT NULL, 
CONSTRAINT Reports_pk PRIMARY KEY(report_id),
CONSTRAINT purchaise_id_fk FOREIGN KEY(purchaise_id) REFERENCES Purchaising(purchaise_id),
CONSTRAINT phar_id_fk3 FOREIGN KEY(phar_id) REFERENCES Pharmacist(phar_id),
CONSTRAINT sales_id_fk FOREIGN KEY(sales_id) REFERENCES Sales(sales_id)
);

INSERT ALL
INTO Reports(phar_id, purchaise_id, sales_id, report_id, rdate)
VALUES (1, 16, 21, 26, DATE '2022-11-01')
INTO Reports(phar_id, purchaise_id, sales_id, report_id, rdate)
VALUES (2, 17, 22, 27, DATE '2022-01-15')
INTO Reports(phar_id, purchaise_id, sales_id, report_id, rdate)
VALUES (3, 18, 23, 28, DATE '2022-06-10')
INTO Reports(phar_id, purchaise_id, sales_id, report_id, rdate)
VALUES (4, 19, 24, 29, DATE '2022-12-12')
INTO Reports(phar_id, purchaise_id, sales_id, report_id, rdate)
VALUES (5, 20, 25, 30, DATE '2022-09-06')
SELECT * FROM dual;
SELECT * FROM Reports;

DESCRIBE Pharmacist;
DESCRIBE Medicines;


SELECT COUNT(phar_id) FROM Pharmacist;

SELECT first_name, last_name
FROM Pharmacist
WHERE gender='Female';

SELECT name
FROM Medicines
WHERE price BETWEEN 0 AND 50
GROUP BY name;

SELECT med_id, name
FROM Medicines
WHERE description='cleans all soft contact lenses';

SELECT MIN(rdate) AS Min_Date, MAX(rdate) AS Max_Date
FROM Reports;

SELECT sales_id, MAX(total_amount)
FROM Sales
GROUP BY sales_id
HAVING MAX(total_amount) > 300;

SELECT phar_id, first_name, last_name, med_id, name
FROM Pharmacist
NATURAL JOIN Medicines;

SELECT c.cust_id, c.first_name, c.last_name, c.gender,s.sales_id, s.sdate, s.total_amount
FROM Customer c, Sales s
WHERE c.cust_id=s.cust_id;

SELECT med_id, UPPER(med_category), name, description
FROM Medicines
WHERE med_category ='solution';

SELECT med_id, med_category, name, INITCAP(description)
FROM Medicines
WHERE description ='skin care and protection';

SELECT cust_id, CONCAT(first_name, last_name) AS Full_Name, gender, LENGTH(cust_email)
FROM Customer
WHERE gender='Male';

SELECT last_name,
LOWER(CONCAT(SUBSTR(last_name,1,8),'y'))
FROM Customer
WHERE cust_id=14;

SELECT first_name, last_name
FROM Customer
WHERE first_name 
LIKE '%m%';

SELECT first_name, last_name
FROM Customer
WHERE first_name 
LIKE '_m%';

SELECT sales_id, total_amount
FROM Sales
WHERE total_amount > 500
ORDER BY total_amount; 

SELECT COUNT(amount) AS Count_Amount, MAX(amount) AS Max_Amount, MIN(amount) AS Min_Amount
FROM Purchaising;

SELECT report_id
FROM Reports
WHERE phar_id 
IN(3);

SELECT *
FROM Customer
WHERE first_name='&first_name';

SELECT phar_id, first_name, last_name, admin_email, admin_password
FROM Pharmacist
WHERE admin_password=&admin_passwoed; 

SELECT ROUND(55.5846)
FROM dual;

SELECT sales_id, MOD(total_amount,20)
FROM Sales;

SELECT med_id, name, med_category, description, price,
CASE name WHEN 'mondo' THEN 10*price
          WHEN 'panadol' THEN 20*price
          WHEN 'renu' THEN 5*price
ELSE price END "REVISED_PRICE"
FROM Medicines;

SELECT med_id, name, med_category, description, price,
DECODE (name, 'mondo', 10*price,
              'panadol', 20*price,
              'renu', 5*price,
     price)
"REVISED_PRICE"
FROM Medicines;