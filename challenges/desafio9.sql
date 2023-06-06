SELECT COUNT (*) AS musicas_no_historico
FROM SpotifyClone.users AS user
INNER JOIN SpotifyClone.history AS history
ON user.user_id = history.user_id
WHERE user.user_name = 'Barbara Liskov';