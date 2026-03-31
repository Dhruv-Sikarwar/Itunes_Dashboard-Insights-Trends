/*
SELECT album_id,COUNT(*) AS Count FROM Album 
GROUP BY album_id
HAVING COUNT(*)>1
ORDER BY album_id;

--> Making album_id Primary Key 

ALTER TABLE Album
ADD CONSTRAINT PK_Album PRIMARY KEY(album_id);
GO

--> Making artist_id Foreign Key 
ALTER TABLE Album
ADD CONSTRAINT FK_Album_Artist FOREIGN KEY(artist_id)
REFERENCES Artist(artist_id);
GO
*/

SELECT * FROM Album WHERE title IS NULL;