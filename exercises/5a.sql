-- How many tracks are longer than 5 minutes?
SELECT COUNT (tracks.name)
FROM tracks
WHERE duration_ms > 300000