-- Tietokantojen perusteet - Database basics
-- H6 T6
-- samu.kaarlela@tuni.fi

SELECT artist.artist_id, first_name, last_name
FROM artwork
LEFT JOIN artist ON artwork.artist_id = artist.artist_id
WHERE technique = "painting"
EXCEPT
SELECT artist.artist_id, first_name, last_name
FROM artwork
LEFT JOIN artist ON artwork.artist_id = artist.artist_id
WHERE technique = "drawing";
