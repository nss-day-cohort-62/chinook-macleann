/* What are the respective total sales for each of those years? (2009 and 2011) */

SELECT SUM(i.Total) AS "Total sum of sales in 2009 and 2011" FROM Invoice i
WHERE (i.InvoiceDate BETWEEN "2009-01-01 00:00:00" AND "2009-12-31 11:59:59")
OR (i.InvoiceDate BETWEEN "2011-01-01 00:00:00" AND "20011-12-31 11:59:59")