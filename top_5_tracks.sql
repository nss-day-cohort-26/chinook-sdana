--top_5_tracks.sql: Provide a query that shows the top 5 most purchased songs.


SELECT Track.Name, COUNT(InvoiceLine.TrackId) AS 'Purchases' FROM Track
JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY Track.TrackId
ORDER BY COUNT(InvoiceLine.TrackId) DESC
LIMIT 5;