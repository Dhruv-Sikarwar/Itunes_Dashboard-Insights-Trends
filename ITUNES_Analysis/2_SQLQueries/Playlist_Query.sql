SELECT * FROM playlist;
--> MAKING PRIMARY KEY
ALTER TABLE playlist
ADD CONSTRAINT PK_playlist PRIMARY KEY (playlist_id);