SELECT artwork.artwork_id, artwork_name, technique
FROM artwork
LEFT JOIN displayed_at ON displayed_at.artwork_id = artwork.artwork_id
WHERE exhibition_id = 3
ORDER BY artwork.artwork_id ASC;