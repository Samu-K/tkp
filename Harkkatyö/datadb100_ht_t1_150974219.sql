CREATE TABLE brand (
    brand_id INT NOT NULL,
    brand_name VARCHAR(200),
    country VARCHAR(200),
    PRIMARY KEY (brand_id)
);

CREATE TABLE product (
    product_id INT NOT NULL,
    product_name VARCHAR(200),
    descr VARCHAR(200),
    price FLOAT,
    brand_id INT NOT NULL,
    PRIMARY KEY (product_id),
    FOREIGN KEY (brand_id) REFERENCES brand (brand_id)
); 

CREATE TABLE falls_into (
    product_id INT NOT NULL,
    category_id INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product (product_id),
    FOREIGN KEY (category_id) REFERENCES category (category_id),
    PRIMARY KEY (product_id, category_id)
);

CREATE TABLE category (
    category_id INT NOT NULL,
    category_name VARCHAR(200),
    PRIMARY KEY (category_id)
);

CREATE TABLE users (
    user_id INT NOT NULL,
    username VARCHAR(200),
    birthyear DATE,
    PRIMARY KEY (user_id)
);

CREATE TABLE evaluation (
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    eval_date DATE,
    rating INT,
    review VARCHAR(2500),
    PRIMARY KEY (user_id,product_id, eval_date),
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    FOREIGN KEY (product_id) REFERENCES product (product_id)
);

INSERT INTO users 
VALUES (6121694297,'Anni N',1985);

INSERT INTO users
VALUES (0505068314 ,'Juuso K', 1990);

INSERT INTO users
VALUES (9062130579 ,'Eino U',1940);

INSERT INTO users
VALUES (7051073112, 'Aila J', 1953);

INSERT INTO category
VALUES (1362326543, 'garden');

INSERT INTO category
VALUES (6867127594, 'forest');

INSERT INTO category
VALUES (9604209179, 'snow clearing');

INSERT INTO brand
VALUES (7904787018, 'McCee', 'United States');

INSERT INTO brand
VALUES (0195505024, 'KooTek', 'Finland');

INSERT INTO product
VALUES (5861490799, 'Grass Timmer TRCee', 'efficient 4-stroke', 179, 1362326543);

INSERT INTO product
VALUES (8632860147, 'Trimmer line Cee', 'high-class line', 6.99, 1362326543);

INSERT INTO product
VALUES (5610848493, 'Chain saw MSCee RR', 'robust and heavy', 559, 1362326543);

INSERT INTO product
VALUES (5610848493, 'Chain saw MSCee RR', 'robust and heavy', 559, 6867127594);

INSERT INTO product
VALUES (2177600634, 'Trimmer line Y', 'all-purpose line',3.99,1362326543);

INSERT INTO product
VALUES (2177600634, 'Shovel L', 'general-purpose shovel',23.95,1362326543);

INSERT INTO product
VALUES (2177600634, 'Shovel L', 'general-purpose shovel',23.95,9604209179);

