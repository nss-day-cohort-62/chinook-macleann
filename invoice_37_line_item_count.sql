/* Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37. */

SELECT COUNT(il.InvoiceId) AS "Total count of line items for Invoice 37" FROM InvoiceLine il
WHERE il.InvoiceId = 37