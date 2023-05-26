/* Which sales agent made the most in sales over all? */

SELECT
    (e.FirstName || ' ' || e.LastName) AS "Employee Name",
    ROUND(SUM(i.Total), 2) AS "Total sales"
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId
GROUP BY e.EmployeeId
ORDER BY "Total sales" DESC
LIMIT 1;