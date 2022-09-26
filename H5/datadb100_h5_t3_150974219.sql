-- Tietokantojen perusteet - Database basics
-- H5 T3
-- samu.kaarlela@tuni.fi

SELECT technique, COUNT(technique) AS count
FROM artwork
GROUP BY technique;