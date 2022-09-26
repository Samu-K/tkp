-- Tietokantojen perusteet - Database basics
-- H4 T3
-- samu.kaarlela@tuni.fi

SELECT artwork_id, value, year_created
FROM artwork
WHERE (value < 50000 OR year_created > 1510)
AND NOT (VALUE < 50000 AND year_created > 1510)
ORDER BY artwork_id;