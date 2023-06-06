SELECT song.title AS cancao,
    COUNT(history.song_id) AS reproducoes
FROM SpotifyClone.history AS history
INNER JOIN SpotifyClone.songs AS song
ON history.song_id = song.song_id
GROUP BY song.title
ORDER BY reproducoes DESC, title
LIMIT 2;