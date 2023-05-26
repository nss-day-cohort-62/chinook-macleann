/*
Provide a query that shows the customers and employees associated with each invoice. The resultant table should include:
- Invoice Total
- Customer Name
- Customer Country
Sale Agent full name
*/

SELECT
    i.Total,
    (c.FirstName || ' ' || c.LastName) as "Customer Name",
    c.Country,
    (e.FirstName || ' ' || e.LastName) as "Agent Name"
FROM Customer c
LEFT JOIN Invoice i ON c.CustomerId = i.CustomerId
LEFT JOIN Employee e ON c.SupportRepId = e.EmployeeId