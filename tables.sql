create table women_dresses(
    id serial not null primary key,
    price INT not null
);

INSERT INTO women_dresses(id, price) VALUES(1, 250);
INSERT INTO women_dresses(id, price) VALUES(2, 500);
INSERT INTO women_dresses(id, price) VALUES(3, 450);
INSERT INTO women_dresses(id, price) VALUES(4, 280);
INSERT INTO women_dresses(id, price) VALUES(5, 600);

CREATE TABLE women_dresses_info(
    id serial NOT NULL PRIMARY KEY,
    size TEXT NOT NULL,
    dress_type INT NOT NULL,
    FOREIGN KEY (dress_type) REFERENCES women_dresses(id)
);

-- joining the tables so that I know which dress the customer buys
-- dresses differ in sizes
-- dress one
INSERT INTO women_dresses_info (size, dress_type) VALUES ('XS', 1);
INSERT INTO women_dresses_info (size, dress_type) VALUES ('S', 1);
INSERT INTO women_dresses_info (size, dress_type) VALUES ('M', 1);
INSERT INTO women_dresses_info (size, dress_type) VALUES ('L', 1);
-- dress two
INSERT INTO women_dresses_info (size, dress_type) VALUES ('XS', 2);
INSERT INTO women_dresses_info (size, dress_type) VALUES ('S', 2);
INSERT INTO women_dresses_info (size, dress_type) VALUES ('M', 2);
INSERT INTO women_dresses_info (size, dress_type) VALUES ('L', 2);
-- dress three
INSERT INTO women_dresses_info (size, dress_type) VALUES ('XS', 3);
INSERT INTO women_dresses_info (size, dress_type) VALUES ('S', 3);
INSERT INTO women_dresses_info (size, dress_type) VALUES ('M', 3);
INSERT INTO women_dresses_info (size, dress_type) VALUES ('L', 3);
-- dress four
INSERT INTO women_dresses_info (size, dress_type) VALUES ('XS', 4);
INSERT INTO women_dresses_info (size, dress_type) VALUES ('S', 4);
INSERT INTO women_dresses_info (size, dress_type) VALUES ('M', 4);
INSERT INTO women_dresses_info (size, dress_type) VALUES ('L', 4);

-- dress five
INSERT INTO women_dresses_info (size, dress_type) VALUES ('XS', 5);
INSERT INTO women_dresses_info (size, dress_type) VALUES ('S', 5);
INSERT INTO women_dresses_info (size, dress_type) VALUES ('M', 5);
INSERT INTO women_dresses_info (size, dress_type) VALUES ('L', 5);

UPDATE women_dresses_info SET women_dresses.price = women_dresses.price WHERE women_dresses_info.price = 1;
UPDATE women_dresses_info SET women_dresses.dress_type = women_dresses.dress_type WHERE women_dresses_info.dress_type = 1;

CREATE TABLE customer(
    id SERIAL NOT NULL PRIMARY KEY,
    customer_name TEXT NOT NULL,
    customer_product TEXT NOT NULL,
    quantity INT NOT NULL
);

INSERT INTO customer (customer_name, customer_product, quantity) VALUES ('Athi', 'Dress', 1);
INSERT INTO customer (customer_name, customer_product, quantity) VALUES ('Khanyiso', 'T-Shirt', 3);
INSERT INTO customer (customer_name, customer_product, quantity) VALUES ('Luyolo', 'Cap', 1);

CREATE TABLE all_customers(
    id SERIAL NOT NULL PRIMARY KEY,
    customer TEXT NOT NULL,
    product TEXT NOT NULL
);
SELECT * FROM all_customers;

CREATE TABLE items_over(
    id SERIAL NOT NULL PRIMARY KEY,
    customer_name TEXT NOT NULL,
    product_name TEXT NOT NULL,
    price TEXT NOT NULL
);
SELECT product_name FROM items_over WHERE price > 300;


-- ---------------------------------------------------------------
CREATE TABLE customerEnq(
    id SERIAL NOT NULL PRIMARY KEY,
    customer_name TEXT NOT NULL,
    customer_email TEXT NOT NULL,
    customer_msg TEXT NOT NULL
);
INSERT INTO customerEnq (customer_name, customer_email, customer_msg) VALUES ('Luyolo', 'luyolo@gmail.com', 'I would like to know when the sale is ending');