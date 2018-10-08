--top_2009_agent.sql: Which sales agent made the most in sales in 2009?
--Hint: Use the MAX function on a subquery.
SELECT Rep, MAX(Sales)

FROM (SELECT Employee.FirstName || " " || Employee.LastName AS 'Rep', SUM(Invoice.Total) AS 'Sales' FROM Invoice
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
WHERE Invoice.InvoiceDate LIKE '%2009%'
GROUP BY Employee.EmployeeId);