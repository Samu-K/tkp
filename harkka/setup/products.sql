-- categories
INSERT INTO category
VALUES (1362326543, 'garden');

INSERT INTO category
VALUES (6867127594, 'forest');

INSERT INTO category
VALUES (9604209179, 'snow clearing');

-- brands

INSERT INTO brand
VALUES (7904787018, 'McCee', 'United States');

INSERT INTO brand
VALUES (0195505024, 'KooTek', 'Finland');

-- products

INSERT INTO product
VALUES (5861490799, 'Grass Timmer TRCee', 'efficient 4-stroke', 179, 7904787018);

INSERT INTO product
VALUES (5861490799, 'Trimmer line Cee', 'high-class line', 6.99, 7904787018);

INSERT INTO product
VALUES (5610848493, 'Chain saw MSCee RR', 'robust and heavy', 559, 7904787018);

INSERT INTO product
VALUES (2177600634, 'Trimmer line Y', 'all-purpose line',3.99,0195505024);

INSERT INTO product
VALUES (2177600634, 'Shovel L', 'general-purpose shovel',23.95,0195505024);

-- categorization

INSERT INTO falls_into
VALUES (5861490799,1362326543);

INSERT INTO falls_into
VALUES (5861490799,1362326543);

INSERT INTO falls_into
VALUES (5610848493,6867127594);

INSERT INTO falls_into
VALUES (5610848493,1362326543);

INSERT INTO falls_into
VALUES (2177600634,1362326543);

INSERT INTO falls_into
VALUES (2177600634,1362326543);

INSERT INTO falls_into
VALUES (2177600634,9604209179);