-- Tietokantojen perusteet - Database basics
-- H6 T8
-- samu.kaarlela@tuni.fi

SELECT artwork_name, value, year_created, first_name, last_name
FROM artwork
LEFT JOIN artist
ON artwork.artist_id = artist.artist_id
WHERE value IN
    (SELECT MAX(VALUE)
    FROM artwork);
