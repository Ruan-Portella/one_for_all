SELECT
  IF(MIN(plan.price) = 0, '0.00', '0') AS faturamento_minimo,
  CONVERT(MAX(plan.price), CHAR) AS faturamento_maximo,
  CONVERT(ROUND(AVG(plan.price), 2), CHAR) AS faturamento_medio,
  CONVERT(ROUND(SUM(plan.price), 2), CHAR) AS faturamento_total
FROM SpotifyClone.users AS user
INNER JOIN SpotifyClone.plans AS plan
ON user.plan_id = plan.plan_id;