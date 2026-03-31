SELECT * FROM media_type;
--> MAKING PRIMARY KEY
ALTER TABLE media_type
ADD CONSTRAINT PK_media_type PRIMARY KEY (media_type_id);

--> CHANGING DATA TYPE
/*ALTER TABLE media_type
ALTER COLUMN media_type_id INT;*/