SELECT * FROM playlist_track;

--> MAKING FOREIGN KEY
ALTER TABLE playlist_track
ADD CONSTRAINT FK_playlist_track_Track FOREIGN KEY (track_id)
REFERENCES track(track_id);

ALTER TABLE playlist_track
ADD CONSTRAINT FK_playlist_track_Playlsit FOREIGN KEY (playlist_id)
REFERENCES playlist(playlist_id);