SELECT album.title AS album,
       COUNT(favorite.song_id) AS favoritadas
FROM SpotifyClone.favorites AS favorite
INNER JOIN SpotifyClone.songs AS song
ON favorite.song_id = song.song_id
INNER JOIN SpotifyClone.albums AS album
ON song.album_id = album.album_id
GROUP BY album
ORDER BY favoritadas DESC
LIMIT 3;