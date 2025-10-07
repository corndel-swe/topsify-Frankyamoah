.mode json
SELECT artists.name As artist_name, COUNT (albums.artist_id) AS explicit_track_count
FROM artists
INNER JOIN tracks, albums
WHERE tracks.explicit = 1 AND tracks.album_id = albums.id AND artists.id = albums.artist_id
GROUP BY artist_name
ORDER BY explicit_track_count DESC
