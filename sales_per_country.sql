/* Provide a query that shows the total sales per country. */

SELECT
    i.BillingCountry AS Country,
    COUNT(i.InvoiceId) AS "Total sales"
FROM Invoice i
GROUP BY Country