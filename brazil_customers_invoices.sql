/*
Provide a query showing the Invoices of Customers who are from Brazil. The resultant table should include:
- Customer's full name
- Invoice Id,
- Date of the invoice
- Billing country
*/

SELECT
    (c.FirstName || ' ' || c.LastName) AS "Full Name",
    i.InvoiceId AS "Invoice Id",
    i.InvoiceDate AS "Invoice Date",
    i.BillingCountry AS "Billing Country"
FROM Customer c
LEFT JOIN Invoice i ON c.CustomerId = i.CustomerId
WHERE i.BillingCountry = 'Brazil'