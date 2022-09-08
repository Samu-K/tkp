SELECT year, exhibition_name, first_name, last_name, artwork_name
FROM displayed_at
LEFT JOIN artwork ON artwork.artwork_id = displayed_at.artwork_id
LEFT JOIN artist ON artist.artist_id = artwork.artist_id
LEFT JOIN exhibition on displayed_at.exhibition_id = exhibition.exhibition_id
ORDER BY year, last_name, artwork_name ASC;
