SELECT
  user.user_name AS pessoa_usuaria,
  COUNT(history.user_id) AS musicas_ouvidas,
  ROUND(SUM(song.duration_sec)/60, 2) AS total_minutos
FROM SpotifyClone.users AS user
INNER JOIN SpotifyClone.history AS history
ON user.user_id = history.user_id
INNER JOIN SpotifyClone.songs AS song
ON history.song_id = song.song_id
GROUP BY user_name
ORDER BY user_name;