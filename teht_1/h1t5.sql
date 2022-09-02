-- SQLite
-- Tietokantojen perusteet - Database basics
-- H1 T1
-- samu.kaarlela@tuni.fi

SELECT name, price
from tea
WHERE price>=6
ORDER BY price DESC, name ASC;