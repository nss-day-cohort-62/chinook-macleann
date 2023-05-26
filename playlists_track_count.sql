/*
Provide a query that shows the total number of tracks in each playlist. The resultant table should include:
- Playlist name
- Total number of tracks on each playlist
*/

SELECT
    p.Name AS "Playlist Name",
    COUNT(t.TrackId) AS "Total number of tracks"
FROM Playlist p
LEFT JOIN PlaylistTrack pt ON p.PlaylistId = pt.PlaylistId
LEFT JOIN Track t ON pt.TrackId = t.TrackId
GROUP BY p.Name