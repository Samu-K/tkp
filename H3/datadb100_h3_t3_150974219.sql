-- Tietokantojen perusteet - Database basics
-- H3 T3
-- samu.kaarlela@tuni.fi

SELECT book.title AS title, pre.title as sequel_title
FROM book
LEFT JOIN book AS pre ON pre.predecessor_id = book.id
ORDER BY book.id ASC;
