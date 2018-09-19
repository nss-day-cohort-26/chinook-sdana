SELECT FirstName, LastName, Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.BillingCountry FROM Customer
JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
WHERE Country = 'Brazil';