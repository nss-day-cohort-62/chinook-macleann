/* Provide a query that shows each Invoice line item, with the name of the track that was purchased */

SELECT
    il.InvoiceLineId AS "Line item ID",
    t.Name AS "Track Name"
FROM InvoiceLine il
LEFT JOIN Track t ON il.TrackId = t.TrackId
ORDER BY il.InvoiceLineId