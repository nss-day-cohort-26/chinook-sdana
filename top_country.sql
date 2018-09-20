--top_country.sql: Which country's customers spent the most?

SELECT Invoice.BillingCountry, SUM(Invoice.Total) AS 'Sum' FROM Invoice
GROUP BY Invoice.BillingCountry
ORDER BY SUM(Invoice.Total) DESC;

