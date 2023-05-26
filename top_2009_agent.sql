/* Which sales agent made the most in sales in 2009? */

SELECT
    (e.FirstName || ' ' || e.LastName) AS "Employee Name",
    ROUND(SUM(i.Total), 2) AS "Total sales"
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId
WHERE i.InvoiceDate BETWEEN "2009-01-01 00:00:00" AND "2009-12-31 00:00:00"
GROUP BY e.EmployeeId
ORDER BY "Total sales" DESC
LIMIT 1;