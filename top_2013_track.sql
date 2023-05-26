/* Provide a query that shows the most purchased track(s) of 2013. */

SELECT 
    t.Name,
    COUNT(il.InvoiceLineId) AS "Times purchased"
FROM Track t
LEFT JOIN InvoiceLine il ON t.TrackId = il.TrackId
LEFT JOIN Invoice i ON il.InvoiceId = i.InvoiceId
WHERE i.InvoiceDate BETWEEN "2013-01-01 00:00:00" AND "2013-12-31 23:59:59"
GROUP BY t.TrackId
HAVING COUNT(il.InvoiceLineId) = (
    SELECT MAX(purchases)
    FROM (
        SELECT COUNT(il.InvoiceLineId) AS purchases
        FROM Track t
        LEFT JOIN InvoiceLine il ON t.TrackId = il.TrackId
        LEFT JOIN Invoice i ON il.InvoiceId = i.InvoiceId
        WHERE i.InvoiceDate BETWEEN "2013-01-01 00:00:00" AND "2013-12-31 23:59:59"
        GROUP BY t.TrackId
    ) AS SubQuery
)
ORDER BY "Times purchased" ASC