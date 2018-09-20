--sales_agent_customer_count.sql: Provide a query that shows the count of customers assigned to each sales agent.

SELECT Employee.FirstName || " " || Employee.LastName AS Name, COUNT(Customer.CustomerId) AS Customers FROM Customer
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY Employee.EmployeeId;