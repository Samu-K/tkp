SELECT artwork.artwork_id, artwork_name, exhibition.exhibition_id, exhibition_name, year
FROM artwork
LEFT JOIN displayed_at on displayed_at.artwork_id = artwork.artwork_id
LEFT JOIN exhibition on displayed_at.exhibition_id = exhibition.exhibition_id
ORDER BY artwork.artwork_id, exhibition.exhibition_id ASC;
