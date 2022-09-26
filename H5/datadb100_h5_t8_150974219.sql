-- Tietokantojen perusteet - Database basics
-- H5 T8
-- samu.kaarlela@tuni.fi

SELECT artwork.artwork_id, artwork_name, technique, first_name, last_name
FROM artwork
LEFT JOIN displayed_at ON artwork.artwork_id = displayed_at.artwork_id
LEFT JOIN artist ON artwork.artist_id = artist.artist_id
LEFT JOIN exhibition ON displayed_at.artwork_id = exhibition.exhibition_id
GROUP BY exhibition_name
HAVING COUNT(*)=1
ORDER BY artwork.artwork_id;