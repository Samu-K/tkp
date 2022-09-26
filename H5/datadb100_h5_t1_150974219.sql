-- Tietokantojen perusteet - Database basics
-- H5 T1
-- samu.kaarlela@tuni.fi

SELECT COUNT(artwork_id) AS artwork_count,MIN(value) AS min_value,MAX(value) AS max_value
FROM artwork;