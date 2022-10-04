-- Tietokantojen perusteet - Database basics
-- H6 T2
-- samu.kaarlela@tuni.fi

SELECT artwork_id, artwork_name
FROM artwork
WHERE artwork_id NOT IN (
    SELECT artwork_id
    FROM displayed_at
);