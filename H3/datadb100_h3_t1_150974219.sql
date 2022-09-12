-- Tietokantojen perusteet - Database basics
-- H3 T1
-- samu.kaarlela@tuni.fi

SELECT pre.title, book.title AS predecessor_title
FROM book
JOIN book AS pre on book.id = pre.predecessor_id
ORDER BY book.id;
