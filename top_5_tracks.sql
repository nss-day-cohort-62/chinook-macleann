/* Provide a query that shows the top 5 most purchased tracks over all. */

SELECT 
    t.Name,
    COUNT(il.InvoiceLineId) AS "Times purchased"
FROM Track t
JOIN InvoiceLine il ON t.TrackId = il.TrackId
GROUP BY t.TrackId
ORDER BY "Times purchased" DESC
LIMIT 5