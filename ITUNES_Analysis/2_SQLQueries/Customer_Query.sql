--> Added a new column by adding two names column. 
/*
ALTER TABLE Customer
ADD Name AS (first_name +' '+ last_name);

--> MAKING PRIMARY KEY 

ALTER TABLE Customer
ADD CONSTRAINT PK_Customer PRIMARY KEY(customer_id)

--> MAKING FOREIGN KEY

ALTER TABLE Customer
ADD CONSTRAINT FK_Customer_Employee FOREIGN KEY (support_rep_id)
REFERENCES Employee(employee_id);

--> REPLACING NULL VALUES

UPDATE Customer
SET company='Unknown'
WHERE company IS NULL
SELECT * FROM Customer WHERE company IS NULL;

UPDATE Customer
SET state='Not Available'
WHERE state IS NULL
SELECT * FROM Customer WHERE company IS NULL;

UPDATE Customer
SET postal_code='Not Available'
WHERE postal_code IS NULL
*/

SELECT * FROM Customer;