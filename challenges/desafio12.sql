SELECT
  artist.artist_name AS artista,
  CASE
    WHEN COUNT(*) < 2 THEN '-'
    WHEN COUNT(*) BETWEEN 1 AND 2 THEN 'C'
    WHEN COUNT(*) BETWEEN 3 AND 4 THEN 'B'
    WHEN COUNT(*) > 4 THEN 'A'
  END AS ranking
FROM SpotifyClone.favorites AS favorite
INNER JOIN SpotifyClone.songs AS song
ON favorite.song_id = song.song_id
RIGHT JOIN SpotifyClone.artist AS artist
ON song.artist_id = artist.artist_id
GROUP BY artista
ORDER BY IF(ranking = '-', 'remove', ranking), artista;