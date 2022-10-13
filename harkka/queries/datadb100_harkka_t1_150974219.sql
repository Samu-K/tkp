-- Tietokantojen perusteet - Database basics
-- Harkka T1
-- samu.kaarlela@tuni.fi

SELECT bname, pname, edate, rating
FROM evaluation
LEFT JOIN user ON evaluation.u_id = user.u_id
LEFT JOIN product ON evaluation.p_id = product.p_id
LEFT JOIN brand ON product.b_id = brand.b_id
WHERE user.uname = 'Anni N'
ORDER BY bname ASC, pname ASC, edate DESC;