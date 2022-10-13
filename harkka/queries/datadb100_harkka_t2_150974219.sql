-- Tietokantojen perusteet - Database basics
-- Harkka T2
-- samu.kaarlela@tuni.fi

SELECT byear, uname
FROM user
LEFT JOIN evaluation ON user.u_id = evaluation.u_id
LEFT JOIN product ON evaluation.p_id = product.p_id
LEFT JOIN brand ON product.b_id = brand.b_id
WHERE bname = 'KooTek'

INTERSECT

SELECT byear, uname
FROM user
LEFT JOIN evaluation ON user.u_id = evaluation.u_id
LEFT JOIN product ON evaluation.p_id = product.p_id
LEFT JOIN brand ON product.b_id = brand.b_id
WHERE bname = 'McCee'
ORDER BY byear ASC;