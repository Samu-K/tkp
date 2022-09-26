-- Tietokantojen perusteet - Database basics
-- H5 T5
-- samu.kaarlela@tuni.fi

SELECT artist.artist_id, first_name, last_name, COUNT(artwork_id) AS artwork_count, MIN(value) AS min_value, MAX(value) as max_value
FROM artist
LEFT JOIN artwork ON artist.artist_id = artwork.artist_id
GROUP BY artist.artist_id
ORDER BY artist.artist_id;