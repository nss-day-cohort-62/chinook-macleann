/* Provide a query that shows the total number of invoices per country. */

SELECT
    COUNT(i.InvoiceId) AS "Number of Invoices",
    i.BillingCountry as Country
FROM Invoice i
GROUP BY i.BillingCountry