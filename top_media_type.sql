--top_media_type.sql: Provide a query that shows the most purchased Media Type.

SELECT MediaType.Name, COUNT(InvoiceLine.TrackId) FROM MediaType
LEFT JOIN Track ON MediaType.MediaTypeId = Track.MediaTypeId
LEFT JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
LEFT JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY MediaType.MediaTypeId;
