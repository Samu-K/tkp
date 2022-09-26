-- Tietokantojen perusteet - Database basics
-- H5 T2
-- samu.kaarlela@tuni.fi

SELECT artwork_name,technique
FROM artwork
WHERE technique IN ("drawing","painting")
ORDER BY technique, artwork_name;