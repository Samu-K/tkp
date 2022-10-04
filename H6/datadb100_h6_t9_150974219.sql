-- Tietokantojen perusteet - Database basics
-- H6 T9
-- samu.kaarlela@tuni.fi

SELECT DISTINCT technique
FROM artwork
WHERE value >
(
    select avg(value) from artwork
)