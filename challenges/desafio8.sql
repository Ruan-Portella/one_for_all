SELECT artist.artist_name AS artista,
       albumJoin.title AS album
FROM SpotifyClone.artist AS artist
INNER JOIN SpotifyClone.albums AS albumJoin
ON artist.artist_id = albumJoin.artist_id
WHERE artist.artist_name = 'Elis Regina'
ORDER BY albumJoin.title;