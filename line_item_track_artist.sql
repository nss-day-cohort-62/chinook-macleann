/* Provide a query that shows each Invoice line item, with the name of the track that was purchase, and the name of the artist. */

SELECT
    il.InvoiceLineId AS "Line item ID",
    t.Name AS "Track Name",
    a.Name AS "Artist Name"
FROM InvoiceLine il
LEFT JOIN Track t ON il.TrackId = t.TrackId
LEFT JOIN Album al ON t.AlbumId = al.AlbumId
LEFT JOIN Artist a ON al.ArtistId = a.ArtistId
ORDER BY il.InvoiceLineId