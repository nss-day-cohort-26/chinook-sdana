--tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs.
--The result should include the Album name, Media type and Genre.

SELECT Track.Name, Album.Title, MediaType.Name, Genre.Name FROM Track
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId
JOIN Genre ON Track.GenreId = Genre.GenreId;