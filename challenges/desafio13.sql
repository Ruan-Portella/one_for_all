SELECT 
    CASE 
        WHEN user.age < 31 THEN 'Até 30 anos'
	    WHEN user.age BETWEEN 31 AND 60 THEN 'Entre 31 e 60 anos'
	    WHEN user.age > 60  THEN 'Maior de 60 anos'
    END AS faixa_etaria, 
    COUNT(DISTINCT user.user_id) AS total_pessoas_usuarias,
    COUNT(favorite.user_id) AS total_favoritadas
FROM SpotifyClone.users AS user
LEFT JOIN SpotifyClone.favorites AS favorite
ON user.user_id = favorite.user_id
GROUP BY faixa_etaria
ORDER BY faixa_etaria;