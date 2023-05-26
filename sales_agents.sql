/* Provide a query showing only the Employees who are "Sales Agents". */

SELECT
    (e.FirstName || ' ' || e.LastName) AS "Full Name",
    e.Title
FROM Employee e
WHERE e.Title = 'Sales Support Agent'