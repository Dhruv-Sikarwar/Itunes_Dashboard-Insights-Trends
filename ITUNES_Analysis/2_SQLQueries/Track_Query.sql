SELECT * FROM track;

--> CHANGING DATA TYPES
ALTER TABLE track
ALTER COLUMN media_type_id TINYINT;

-- MAKING PRIMARY KEY
ALTER TABLE track
ADD CONSTRAINT PK_track PRIMARY KEY (track_id);

--> MAKING FOREIGN KEYS 
ALTER TABLE track
ADD CONSTRAINT FK_track_album FOREIGN KEY (album_id)
REFERENCES album(album_id);

ALTER TABLE track
ADD CONSTRAINT FK_track_mediatype FOREIGN KEY (media_type_id)
REFERENCES media_type(media_type_id);

ALTER TABLE track
ADD CONSTRAINT FK_track_genre FOREIGN KEY (genre_id)
REFERENCES genre(genre_id);

--> REPLACING NULLS
UPDATE track
SET composer='N/A'
WHERE composer IS NULL;

--> ROUNDING UNIT PRICE
UPDATE track
SET unit_price=ROUND(unit_price,2);