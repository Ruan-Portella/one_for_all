SELECT 
    (SELECT COUNT(*) FROM SpotifyClone.songs) AS cancoes,
    (SELECT COUNT(*) FROM SpotifyClone.artist) AS artistas,
    (SELECT COUNT(*) FROM SpotifyClone.albums) AS albuns