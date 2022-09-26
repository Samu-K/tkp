-- Tietokantojen perusteet - Database basics
-- H4 T4
-- samu.kaarlela@tuni.fi

SELECT technique,artwork_name,last_name
FROM artwork
LEFT JOIN artist ON artist.artist_id = artwork.artist_id
WHERE technique = "drawing" or technique="sculpture"
ORDER BY technique, artwork_name ASC;