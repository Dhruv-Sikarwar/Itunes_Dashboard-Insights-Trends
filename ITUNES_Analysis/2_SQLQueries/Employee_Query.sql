--> MAKING PRIMARY KEY 
ALTER TABLE Employee
ADD CONSTRAINT PK_Employee PRIMARY KEY(employee_id);

--> MAKING FOREIGN KEY 
ALTER TABLE Employee
ADD CONSTRAINT FK_Employee FOREIGN KEY(reports_to)
REFERENCES Employee(employee_id);

--> CHANGING DATA TYPES
ALTER TABLE Employee
ALTER COLUMN birthdate DATE;

ALTER TABLE Employee
ALTER COLUMN hire_date DATE;

ALTER TABLE Employee
ALTER COLUMN levels FLOAT;
SELECT * FROM Employee;

--> COMBINING TWO COLUMNS

ALTER TABLE Employee
ADD Name VARCHAR(100);

UPDATE Employee
SET Name=CONCAT(first_name,' ',last_name);

SELECT * FROM Employee;