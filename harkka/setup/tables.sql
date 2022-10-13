-- create tables

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