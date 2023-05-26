/* Provide a query showing a unique (distinct) list of billing countries from the Invoice table. */

SELECT DISTINCT i.BillingCountry AS "Unique Billing Countries" FROM Invoice i