--> MAKING PRIMARY KEY
ALTER TABLE invoice_line
ADD CONSTRAINT PK_invoice_line PRIMARY KEY(invoice_line_id);

--> MAKING FOREIGN KEY
ALTER TABLE invoice_line
ADD CONSTRAINT FK_invoice_line FOREIGN KEY (invoice_id)
REFERENCES invoice(invoice_id);

ALTER TABLE invoice_line
ADD CONSTRAINT FK_invoice_line_track FOREIGN KEY (track_id)
REFERENCES track(track_id);

--> ROUNDING UNIT PRICE
UPDATE invoice_line
SET unit_price=ROUND(unit_price,2);
SELECT * FROM invoice_line;