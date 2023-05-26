/*
Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include:
- Album name
- Media type
- Genre
*/

SELECT
    t.Name AS "Track Name",
    al.Title AS "Album Name",
    mt.Name AS "Media Type",
    g.Name AS "Genre"
FROM Track t
LEFT JOIN Album al ON t.AlbumId = al.AlbumId
LEFT JOIN MediaType mt ON t.MediaTypeId = mt.MediaTypeId
LEFT JOIN Genre g ON t.GenreId = g.GenreId