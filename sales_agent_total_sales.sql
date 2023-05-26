/*
Provide a query that shows total sales made by each sales agent. The resultant table should include:
- Employee full name
- Total sales for each employee (all time)
*/

SELECT
    (e.FirstName || ' ' || e.LastName) AS "Employee Name",
    ROUND(SUM(i.Total), 2) AS "Total sales"
FROM Invoice i
LEFT JOIN Customer c ON i.CustomerId = c.CustomerId
LEFT JOIN Employee e ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId