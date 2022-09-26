-- Tietokantojen perusteet - Database basics
-- H5 T5
-- samu.kaarlela@tuni.fi

SELECT artist.artist_id, first_name, last_name
FROM artist
LEFT JOIN artwork ON artist.artist_id = artwork.artist_id
WHERE technique="painting"
EXCEPT
SELECT artist.artist_id, first_name, last_name
FROM artist
LEFT JOIN artwork ON artist.artist_id = artwork.artist_id
WHERE technique in ("drawing","sculpture")
ORDER BY artist.artist_id;