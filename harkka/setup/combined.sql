-- create tables

CREATE TABLE brand (
    b_id INT NOT NULL,
    bname VARCHAR(200),
    country VARCHAR(200),
    PRIMARY KEY (b_id)
);

CREATE TABLE product (
    p_id INT NOT NULL,
    pname VARCHAR(200),
    description VARCHAR(200),
    price FLOAT,
    b_id INT NOT NULL,
    PRIMARY KEY (p_id),
    FOREIGN KEY (b_id) REFERENCES brand (b_id)
); 

CREATE TABLE falls_into (
    p_id INT NOT NULL,
    c_id INT NOT NULL,
    FOREIGN KEY (p_id) REFERENCES product (p_id),
    FOREIGN KEY (c_id) REFERENCES category (c_id),
    PRIMARY KEY (p_id, c_id)
);

CREATE TABLE category (
    c_id INT NOT NULL,
    cname VARCHAR(200),
    PRIMARY KEY (c_id)
);

CREATE TABLE user (
    u_id INT NOT NULL,
    uname VARCHAR(200),
    byear DATE,
    PRIMARY KEY (u_id)
);

CREATE TABLE evaluation (
    u_id INT NOT NULL,
    p_id INT NOT NULL,
    edate DATE,
    rating INT,
    review VARCHAR(2500),
    PRIMARY KEY (u_id,p_id, edate),
    FOREIGN KEY (u_id) REFERENCES user (u_id),
    FOREIGN KEY (p_id) REFERENCES product (p_id)
);

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
VALUES (8151339273, 'Trimmer line Cee', 'high-class line', 6.99, 7904787018);

INSERT INTO product
VALUES (5610848493, 'Chain saw MSCee RR', 'robust and heavy', 559, 7904787018);

INSERT INTO product
VALUES (2177600634, 'Trimmer line Y', 'all-purpose line',3.99,0195505024);

INSERT INTO product
VALUES (3483988794, 'Shovel L', 'general-purpose shovel',23.95,0195505024);

-- categorization

INSERT INTO falls_into
VALUES (5861490799,1362326543);

INSERT INTO falls_into
VALUES (8151339273,1362326543);

INSERT INTO falls_into
VALUES (5610848493,6867127594);

INSERT INTO falls_into
VALUES (5610848493,1362326543);

INSERT INTO falls_into
VALUES (2177600634,1362326543);

INSERT INTO falls_into
VALUES (3483988794 ,1362326543);

INSERT INTO falls_into
VALUES (3483988794 ,9604209179);

-- create user

INSERT INTO user 
VALUES (6121694297,'Anni N',1985);

INSERT INTO user
VALUES (0505068314 ,'Juuso K', 1990);

INSERT INTO user
VALUES (9062130579 ,'Eino U',1940);

INSERT INTO user
VALUES (7051073112, 'Aila J', 1953);

-- create reviews

INSERT INTO evaluation
VALUES (
    6121694297,
    5861490799,
    '2021-06-05',
    3,
    Null
);

INSERT INTO evaluation
VALUES (
    6121694297,
    8151339273,
    '2021-06-13',
    2,
    NULL
);

INSERT INTO evaluation
VALUES (
    6121694297,
    3483988794,
    '2021-07-24',
    3,
    Null
);

INSERT INTO evaluation
VALUES (
    6121694297,
    2177600634,
    '2021-08-13',
    4,
    Null
);

INSERT INTO evaluation
VALUES (
    6121694297,
    5861490799,
    '2021-09-12',
    5,
    'reliable and functioning gadget'
);

INSERT INTO evaluation
VALUES (
    9062130579,
    5861490799,
    '2021-06-30',
    5,
    'excellent'
);

INSERT INTO evaluation
VALUES (
    9062130579,
    8151339273,
    '2021-07-02',
    2,
    'moderately works'
);

INSERT INTO evaluation
VALUES (
    0505068314,
    3483988794,
    '2021-06-04',
    1,
    'rip-off'
);

INSERT INTO evaluation
VALUES (
    7051073112,
    3483988794,
    '2021-08-11',
    1,
    'completely useless'
);