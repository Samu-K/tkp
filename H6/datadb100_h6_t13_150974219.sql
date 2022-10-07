-- Tietokantojen perusteet - Database basics
-- H6 T13
-- samu.kaarlela@tuni.fi

SELECT artwork_name
FROM artwork
WHERE year_created BETWEEN 1500 AND 1600
ORDER BY artwork_name ASC;