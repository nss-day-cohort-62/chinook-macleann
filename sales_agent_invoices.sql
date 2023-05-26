/*
Provide a query that shows the invoices associated with each sales agent. The resultant table should include:
- Sales Agent's full name
- Invoice ID
*/

SELECT
    (e.FirstName || ' ' || e.LastName) AS "Full Name",
    i.InvoiceId AS "Invoice Id"
FROM Employee e
LEFT JOIN Customer c ON e.EmployeeId = c.SupportRepId
LEFT JOIN Invoice i ON c.CustomerId = i.CustomerId
WHERE e.Title = 'Sales Support Agent'