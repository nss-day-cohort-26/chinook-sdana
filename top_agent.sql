--top_agent.sql: Which sales agent made the most in sales over all?
SELECT Rep, MAX(Sales)

FROM (SELECT Employee.FirstName || " " || Employee.LastName AS 'Rep', COUNT(Invoice.InvoiceId) AS 'Sales' FROM Invoice
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY Employee.EmployeeId);