-- Tietokantojen perusteet - Database basics
-- Harkka T4
-- samu.kaarlela@tuni.fi

SELECT pname, 
    MIN(rating) AS min_rating,
    MAX(rating) as max_rating, 
    AVG(rating) AS avg_rating, 
    COUNT(rating) AS no_rating, 
    COUNT(DISTINCT evaluation.u_id) AS different_users
FROM product
LEFT JOIN evaluation ON product.p_id = evaluation.p_id
LEFT JOIN user ON evaluation.u_id = user.u_id
GROUP BY pname
ORDER BY pname ASC;