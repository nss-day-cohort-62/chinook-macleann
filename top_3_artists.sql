/* Provide a query that shows the top 3 best selling artists. */

SELECT 
    a.Name,
    COUNT(il.InvoiceLineId) AS "Total sold"
FROM Artist a
JOIN Album al ON a.ArtistId = al.ArtistId
JOIN Track t ON al.AlbumId = t.AlbumId
JOIN InvoiceLine il ON t.TrackId = il.TrackId
GROUP BY a.ArtistId
ORDER BY "Total sold" DESC
LIMIT 3