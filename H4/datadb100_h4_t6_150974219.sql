-- Tietokantojen perusteet - Database basics
-- H4 T6
-- samu.kaarlela@tuni.fi

SELECT DISTINCT artist.artist_id,first_name
FROM artist
LEFT JOIN artwork ON artist.artist_id = artwork.artist_id
WHERE technique="painting" or technique="drawing"
GROUP BY technique
ORDER BY artist.artist_id;