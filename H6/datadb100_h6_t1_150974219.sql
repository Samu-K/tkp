-- Tietokantojen perusteet - Database basics
-- H6 T1
-- samu.kaarlela@tuni.fi

SELECT DISTINCT displayed_at.artwork_id, artwork_name
FROM displayed_at
LEFT JOIN artwork
ON displayed_at.artwork_id = artwork.artwork_id;


