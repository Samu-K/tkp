-- Tietokantojen perusteet - Database basics
-- H6 T12
-- samu.kaarlela@tuni.fi

SELECT artwork_name
FROM artwork
WHERE artwork_name LIKE "%of%"
ORDER BY artwork_name ASC;