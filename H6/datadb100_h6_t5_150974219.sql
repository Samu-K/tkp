-- Tietokantojen perusteet - Database basics
-- H6 T5
-- samu.kaarlela@tuni.fi

SELECT DISTINCT artist.artist_id, first_name, last_name
FROM artwork
LEFT JOIN artist ON artwork.artist_id = artist.artist_id
WHERE technique IN ("painting", "drawing")
GROUP BY technique
ORDER BY artist.artist_id;