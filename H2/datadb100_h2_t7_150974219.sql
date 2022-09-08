SELECT first_name, last_name, artist.artist_id, artwork_id, artwork_name
FROM artist
LEFT JOIN artwork ON artist.artist_id = artwork.artist_id
ORDER BY artist.artist_id, artwork_id ASC;