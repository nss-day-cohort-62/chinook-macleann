/* Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. */

SELECT il.InvoiceId, COUNT(il.InvoiceLineId) AS "Total count of line items" FROM InvoiceLine il
GROUP BY il.InvoiceId