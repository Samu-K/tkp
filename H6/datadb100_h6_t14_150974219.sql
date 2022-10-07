-- Tietokantojen perusteet - Database basics
-- H6 T14
-- samu.kaarlela@tuni.fi

SELECT artwork_name, value*1.1 AS increased_value
FROM artwork
ORDER BY artwork_name