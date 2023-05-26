/* Provide a query only showing the Customers from Brazil. */

SELECT
    (FirstName || ' ' || LastName) AS FullName,
    Country
FROM Customer
WHERE Country = 'Brazil'