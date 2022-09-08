SELECT artwork.artwork_id, artwork_name
FROM artwork
LEFT JOIN displayed_at ON artwork.artwork_id = displayed_at.artwork_id
WHERE exhibition_id IS NULL;