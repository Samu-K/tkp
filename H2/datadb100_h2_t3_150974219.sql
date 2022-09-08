SELECT artwork_id, artwork_name, first_name, last_name, year_created
from artwork
LEFT JOIN artist ON artwork.artist_id = artist.artist_id
WHERE technique = "painting"
ORDER BY artwork_id ASC;