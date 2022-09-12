-- Tietokantojen perusteet - Database basics
-- H3 T2
-- samu.kaarlela@tuni.fi

SELECT book.title, pre.title AS predecessor_title
FROM book
LEFT OUTER JOIN book AS pre ON book.predecessor_id = pre.id
ORDER BY book.id ASC;
