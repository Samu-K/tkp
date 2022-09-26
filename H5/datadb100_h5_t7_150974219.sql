-- Tietokantojen perusteet - Database basics
-- H5 T7
-- samu.kaarlela@tuni.fi

SELECT artwork.artwork_id, artwork_name, technique
FROM artwork
LEFT JOIN displayed_at ON artwork.artwork_id = displayed_at.artwork_id
LEFT JOIN exhibition ON displayed_at.artwork_id = exhibition.exhibition_id
GROUP BY exhibition_name
HAVING COUNT(*)=1
ORDER BY artwork.artwork_id;