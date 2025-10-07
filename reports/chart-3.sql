.mode json
SELECT albums.name AS album_name, ROUND(AVG(features.loudness), 1) AS average_loudness, albums.release_date
FROM artists
INNER JOIN features, tracks, albums
WHERE features.track_id = tracks.id AND tracks.album_id = albums.id AND artists.id = albums.artist_id
GROUP BY album_name