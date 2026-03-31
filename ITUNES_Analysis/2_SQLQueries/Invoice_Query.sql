SELECT * FROM invoice;
--> MAKING PRIMARY KEY
ALTER TABLE invoice
ADD CONSTRAINT PK_invoice PRIMARY KEY (invoice_id);

--> MAKING FOREIGN KEYS
ALTER TABLE invoice
ADD CONSTRAINT FK_invoice_customer FOREIGN KEY(customer_id)
REFERENCES Customer(customer_id);

--> CHANGING DATA TYPES
ALTER TABLE invoice
ALTER COLUMN invoice_date DATE;