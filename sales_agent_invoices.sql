SELECT Employee.FirstName || " " || Employee.LastName AS Name, * FROM Invoice
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId;
