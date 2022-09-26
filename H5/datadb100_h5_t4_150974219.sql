-- Tietokantojen perusteet - Database basics
-- H5 T4
-- samu.kaarlela@tuni.fi

SELECT artist.artist_id, first_name, last_name, COUNT(artwork_id) AS artwork_count, MIN(value) AS min_value, MAX(value) as max_value
FROM artwork
LEFT JOIN artist ON artwork.artist_id = artist.artist_id
GROUP BY artist.artist_id
ORDER BY artist.artist_id;