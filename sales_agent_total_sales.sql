--sales_agent_total_sales.sql: Provide a query that shows total sales made by each sales agent.

SELECT Employee.FirstName || " " || Employee.LastName AS 'Sales Rep', COUNT(Invoice.InvoiceId) AS 'Sales' FROM Invoice
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY Employee.EmployeeId;