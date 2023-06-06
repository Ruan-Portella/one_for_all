SELECT user.user_name AS pessoa_usuaria,
    IF(MAX(history.date_play) > '2021-01-01', 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM SpotifyClone.users AS user
LEFT JOIN SpotifyClone.history AS history
ON user.user_id = history.user_id
GROUP BY user.user_id
ORDER BY user.user_name;
