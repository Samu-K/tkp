-- Tietokantojen perusteet - Database basics
-- Harkka T3
-- samu.kaarlela@tuni.fi

SELECT pname, MIN(price) AS price
FROM product
LEFT JOIN brand ON product.b_id = brand.b_id
WHERE bname = 'McCee';