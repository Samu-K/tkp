-- Tietokantojen perusteet - Database basics
-- H6 T7
-- samu.kaarlela@tuni.fi

SELECT artwork_name, value, year_created
FROM artwork
WHERE value IN
    (SELECT MAX(VALUE)
    FROM artwork);