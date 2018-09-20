--sales_per_country.sql: Provide a query that shows the total sales per country.

SELECT Invoice.BillingCountry AS Country, COUNT(Invoice.InvoiceId) AS Sales FROM Invoice
GROUP BY Invoice.BillingCountry;