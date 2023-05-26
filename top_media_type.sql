/* Provide a query that shows the most purchased Media Type. */

SELECT 
    mt.Name,
    COUNT(il.InvoiceLineId) AS "Times purchased"
FROM MediaType mt
JOIN Track t ON mt.MediaTypeId = t.MediaTypeId
JOIN InvoiceLine il ON t.TrackId = il.TrackId
GROUP BY mt.MediaTypeId
ORDER BY "Times purchased" DESC
LIMIT 1