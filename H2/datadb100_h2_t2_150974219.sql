SELECT artwork_id, artwork_name, first_name, last_name, year_created
FROM artwork
LEFT JOIN artist on artwork.artist_id = artist.artist_id
ORDER BY artwork_id ASC;