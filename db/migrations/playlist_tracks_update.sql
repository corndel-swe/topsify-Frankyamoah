DROP TABLE IF EXISTS playlist_tracks;

CREATE TABLE playlist_tracks(
playlist_id INTEGER,
track_id text,
FOREIGN KEY (playlist_id) REFERENCES playlists(id),
FOREIGN KEY (track_id) REFERENCES tracks(id)
);