.mode json
SELECT artists.name AS artist_name, albums.name AS album_name, ROUND(AVG(features.danceability), 2) AS average_danceability,
ROUND(AVG(features.energy), 2) AS average_energy, ROUND(AVG(features.speechiness), 2) AS average_speechiness, ROUND(AVG(features.acousticness), 2) AS average_acousticness,
ROUND(AVG(features.liveness), 2) AS average_liveness
FROM artists
INNER JOIN features, tracks, albums
WHERE features.track_id = tracks.id AND tracks.album_id = albums.id AND artists.id = albums.artist_id
GROUP BY artist_name