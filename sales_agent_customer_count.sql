/*
Provide a query that shows how many customers are assigned to each employee. The resultant table should include:
- Employee full name
- Total number of customers assigned to each employee (even if it's zero)
*/

SELECT
    (e.FirstName || ' ' || e.LastName) AS "Employee Name",
    COUNT(c.CustomerId) AS "Number of customers assigned"
FROM Employee e
LEFT JOIN Customer c ON e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId