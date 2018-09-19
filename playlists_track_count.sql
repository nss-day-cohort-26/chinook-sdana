--playlists_track_count.sql: Provide a query that shows the total number of tracks in each playlist.
--The Playlist name should be include on the resulant table.

SELECT Playlist.Name, COUNT(PlaylistTrack.TrackId) FROM PlaylistTrack
JOIN Playlist ON PlaylistTrack.PlaylistId = Playlist.PlaylistId
GROUP BY Playlist.PlaylistId;