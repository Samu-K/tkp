-- Tietokantojen perusteet - Database basics
-- H6 T1
-- samu.kaarlela@tuni.fi

SELECT *
FROM artwork
LEFT JOIN displayed_at
ON artwork.artwork_id = displayed_at.artwork_id;