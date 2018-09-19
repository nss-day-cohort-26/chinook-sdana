--How many Invoices were there in 2009 and 2011?

--SELECT COUNT(Invoice.InvoiceId) FROM Invoice
--WHERE Invoice.InvoiceDate LIKE '%2009%' OR Invoice.InvoiceDate LIKE '%2011%';

SELECT COUNT(Invoice.InvoiceId) FROM Invoice
WHERE Invoice.InvoiceDate LIKE '%2009%'
UNION ALL
SELECT COUNT(Invoice.InvoiceId) FROM Invoice
WHERE Invoice.InvoiceDate LIKE '%2011%'
