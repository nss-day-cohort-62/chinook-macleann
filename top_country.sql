/* Which country's customers spent the most? */

SELECT
    i.BillingCountry AS Country,
    ROUND(SUM(i.Total), 2) AS "Total spent"
FROM Invoice i
GROUP BY Country