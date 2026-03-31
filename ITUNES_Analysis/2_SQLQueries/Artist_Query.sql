/*
SELECT artist_id,COUNT(*) FROM Artist
GROUP BY artist_id
HAVING COUNT(*)>1;
GO

ALTER TABLE Artist
ADD CONSTRAINT PK_Artist PRIMARY KEY(artist_id);
GO

*/
SELECT * FROM Artist WHERE name IS NULL;
GO