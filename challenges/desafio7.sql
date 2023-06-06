SELECT artist.artist_name AS artista,
       album.title AS album,
  COUNT(subscriber.user_id) AS pessoas_seguidoras
FROM SpotifyClone.artist AS artist
INNER JOIN SpotifyClone.albums AS album
ON artist.artist_id = album.artist_id
INNER JOIN SpotifyClone.subscriber AS subscriber
ON artist.artist_id = subscriber.artist_id
GROUP BY artist.artist_name, album.title
ORDER BY pessoas_seguidoras DESC, artist.artist_name, album.title;