CREATE TABLE customer(
    id SERIAL NOT NULL PRIMARY KEY,
    customer_name TEXT NOT NULL,
    customer_product TEXT NOT NULL
)
create table women_dresses(
    id serial not null primary key,
    price INT not null
);

INSERT INTO women_dresses(id, price) VALUES(1, 250);
INSERT INTO women_dresses(id, price) VALUES(2, 500);
INSERT INTO women_dresses(id, price) VALUES(3, 450);
INSERT INTO women_dresses(id, price) VALUES(4, 280);

CREATE TABLE women_dresses_info(
    id serial NOT NULL PRIMARY KEY,
    size TEXT NOT NULL,
    dress_number INT NOT NULL,
    FOREIGN KEY (dress_number) REFERENCES women_dresses(id)
);
-- dress one
INSERT INTO women_dresses_info (size, dress_number) VALUES ('XS', 1);
INSERT INTO women_dresses_info (size, dress_number) VALUES ('S', 1);
INSERT INTO women_dresses_info (size, dress_number) VALUES ('M', 1);
INSERT INTO women_dresses_info (size, dress_number) VALUES ('L', 1);
-- dress two
INSERT INTO women_dresses_info (size, dress_number) VALUES ('XS', 2);
INSERT INTO women_dresses_info (size, dress_number) VALUES ('S', 2);
INSERT INTO women_dresses_info (size, dress_number) VALUES ('M', 2);
INSERT INTO women_dresses_info (size, dress_number) VALUES ('L', 2);
-- dress three
INSERT INTO women_dresses_info (size, dress_number) VALUES ('XS', 3);
INSERT INTO women_dresses_info (size, dress_number) VALUES ('S', 3);
INSERT INTO women_dresses_info (size, dress_number) VALUES ('M', 3);
INSERT INTO women_dresses_info (size, dress_number) VALUES ('L', 3);
-- dress four
INSERT INTO women_dresses_info (size, dress_number) VALUES ('XS', 4);
INSERT INTO women_dresses_info (size, dress_number) VALUES ('S', 4);
INSERT INTO women_dresses_info (size, dress_number) VALUES ('M', 4);
INSERT INTO women_dresses_info (size, dress_number) VALUES ('L', 4);

-- MEN T SHIRTS
CREATE TABLE men_tees(
    id serial NOT NULL PRIMARY KEY,
    price INT NOT NULL
);
INSERT INTO men_tees(id, price) VALUES(1, 200);
INSERT INTO men_tees(id, price) VALUES(2, 320);
INSERT INTO men_tees(id, price) VALUES(3, 250);
INSERT INTO men_tees(id, price) VALUES(4, 180);

CREATE TABLE men_tees_info (
    id serial NOT NULL PRIMARY KEY,
    tee_sizes TEXT NOT NULL,
    tee_number INT NOT NULL,
    FOREIGN KEY (tee_number) REFERENCES men_tees(id)
);
-- tee one
INSERT INTO men_tees_info (tee_sizes, tee_number) VALUES ('XS', 1);
INSERT INTO men_tees_info (tee_sizes, tee_number) VALUES ('S', 1);
INSERT INTO men_tees_info (tee_sizes, tee_number) VALUES ('M', 1);
INSERT INTO men_tees_info (tee_sizes, tee_number) VALUES ('L', 1);
-- tee two
INSERT INTO men_tees_info (tee_sizes, tee_number) VALUES ('XS', 2);
INSERT INTO men_tees_info (tee_sizes, tee_number) VALUES ('S', 2);
INSERT INTO men_tees_info (tee_sizes, tee_number) VALUES ('M', 2);
INSERT INTO men_tees_info (tee_sizes, tee_number) VALUES ('L', 2);
-- tee three
INSERT INTO men_tees_info (tee_sizes, tee_number) VALUES ('XS', 3);
INSERT INTO men_tees_info (tee_sizes, tee_number) VALUES ('S', 3);
INSERT INTO men_tees_info (tee_sizes, tee_number) VALUES ('M', 3);
INSERT INTO men_tees_info (tee_sizes, tee_number) VALUES ('L', 3);
-- tee four
INSERT INTO men_tees_info (tee_sizes, tee_number) VALUES ('XS', 4);
INSERT INTO men_tees_info (tee_sizes, tee_number) VALUES ('S', 4);
INSERT INTO men_tees_info (tee_sizes, tee_number) VALUES ('M', 4);
INSERT INTO men_tees_info (tee_sizes, tee_number) VALUES ('L', 4);

-- FEMALE SHORTS
CREATE TABLE women_shorts(
    id serial NOT NULL PRIMARY KEY,
    price INT NOT NULL
);
INSERT INTO women_shorts(id, price) VALUES(1, 400);
INSERT INTO women_shorts(id, price) VALUES(2, 350);
INSERT INTO women_shorts(id, price) VALUES(3, 250);
INSERT INTO women_shorts(id, price) VALUES(4, 200);

CREATE TABLE women_shorts_info (
    id serial NOT NULL PRIMARY KEY,
    short_sizes TEXT NOT NULL,
    short_number INT NOT NULL,
    FOREIGN KEY (short_number) REFERENCES women_shorts(id)
);
-- short one
INSERT INTO women_shorts_info (short_sizes, short_number) VALUES ('XS', 1);
INSERT INTO women_shorts_info (short_sizes, short_number) VALUES ('S', 1);
INSERT INTO women_shorts_info (short_sizes, short_number) VALUES ('M', 1);
INSERT INTO women_shorts_info (short_sizes, short_number) VALUES ('L', 1);
-- short two
INSERT INTO women_shorts_info (short_sizes, short_number) VALUES ('XS', 2);
INSERT INTO women_shorts_info (short_sizes, short_number) VALUES ('S', 2);
INSERT INTO women_shorts_info (short_sizes, short_number) VALUES ('M', 2);
INSERT INTO women_shorts_info (short_sizes, short_number) VALUES ('L', 2);
-- short three
INSERT INTO women_shorts_info (short_sizes, short_number) VALUES ('XS', 3);
INSERT INTO women_shorts_info (short_sizes, short_number) VALUES ('S', 3);
INSERT INTO women_shorts_info (short_sizes, short_number) VALUES ('M', 3);
INSERT INTO women_shorts_info (short_sizes, short_number) VALUES ('L', 3);
-- short four
INSERT INTO women_shorts_info (short_sizes, short_number) VALUES ('XS', 4);
INSERT INTO women_shorts_info (short_sizes, short_number) VALUES ('S', 4);
INSERT INTO women_shorts_info (short_sizes, short_number) VALUES ('M', 4);
INSERT INTO women_shorts_info (short_sizes, short_number) VALUES ('L', 4);

-- FEMALE CROP TOPS
CREATE TABLE women_crop_tops(
    id serial NOT NULL PRIMARY KEY,
    price INT NOT NULL
);
INSERT INTO women_crop_tops(id, price) VALUES(1, 350);
INSERT INTO women_crop_tops(id, price) VALUES(2, 180);
INSERT INTO women_crop_tops(id, price) VALUES(3, 200);
INSERT INTO women_crop_tops(id, price) VALUES(4, 250);

CREATE TABLE women_crop_tops_info (
    id serial NOT NULL PRIMARY KEY,
    top_sizes TEXT NOT NULL,
    top_number INT NOT NULL,
    FOREIGN KEY (top_number) REFERENCES women_crop_tops(id)
);
-- crop top one
INSERT INTO women_crop_tops_info (top_sizes, top_number) VALUES ('XS', 1);
INSERT INTO women_crop_tops_info (top_sizes, top_number) VALUES ('S', 1);
INSERT INTO women_crop_tops_info (top_sizes, top_number) VALUES ('M', 1);
INSERT INTO women_crop_tops_info (top_sizes, top_number) VALUES ('L', 1);
-- crop top two
INSERT INTO women_crop_tops_info (top_sizes, top_number) VALUES ('XS', 2);
INSERT INTO women_crop_tops_info (top_sizes, top_number) VALUES ('S', 2);
INSERT INTO women_crop_tops_info (top_sizes, top_number) VALUES ('M', 2);
INSERT INTO women_crop_tops_info (top_sizes, top_number) VALUES ('L', 2);
-- crop top three
INSERT INTO women_crop_tops_info (top_sizes, top_number) VALUES ('XS', 3);
INSERT INTO women_crop_tops_info (top_sizes, top_number) VALUES ('S', 3);
INSERT INTO women_crop_tops_info (top_sizes, top_number) VALUES ('M', 3);
INSERT INTO women_crop_tops_info (top_sizes, top_number) VALUES ('L', 3);
-- crop top four
INSERT INTO women_crop_tops_info (top_sizes, top_number) VALUES ('XS', 4);
INSERT INTO women_crop_tops_info (top_sizes, top_number) VALUES ('S', 4);
INSERT INTO women_crop_tops_info (top_sizes, top_number) VALUES ('M', 4);
INSERT INTO women_crop_tops_info (top_sizes, top_number) VALUES ('L', 4);

-- MEN CAPS
CREATE TABLE men_caps(
    id serial NOT NULL PRIMARY KEY,
    price INT NOT NULL
);
INSERT INTO men_caps(id, price) VALUES(1, 100);
INSERT INTO men_caps(id, price) VALUES(2, 150);
INSERT INTO men_caps(id, price) VALUES(3, 250);
INSERT INTO men_caps(id, price) VALUES(4, 200);

CREATE TABLE men_caps_info (
    id serial NOT NULL PRIMARY KEY,
    cap_sizes TEXT NOT NULL,
    cap_number INT NOT NULL,
    FOREIGN KEY (cap_number) REFERENCES men_caps(id)
);
-- cap one
INSERT INTO men_caps_info (cap_sizes, cap_number) VALUES ('XS', 1);
INSERT INTO men_caps_info (cap_sizes, cap_number) VALUES ('S', 1);
INSERT INTO men_caps_info (cap_sizes, cap_number) VALUES ('M', 1);
INSERT INTO men_caps_info (cap_sizes, cap_number) VALUES ('L', 1);
-- cap two
INSERT INTO men_caps_info (cap_sizes, cap_number) VALUES ('XS', 2);
INSERT INTO men_caps_info (cap_sizes, cap_number) VALUES ('S', 2);
INSERT INTO men_caps_info (cap_sizes, cap_number) VALUES ('M', 2);
INSERT INTO men_caps_info (cap_sizes, cap_number) VALUES ('L', 2);
-- cap three
INSERT INTO men_caps_info (cap_sizes, cap_number) VALUES ('XS', 3);
INSERT INTO men_caps_info (cap_sizes, cap_number) VALUES ('S', 3);
INSERT INTO men_caps_info (cap_sizes, cap_number) VALUES ('M', 3);
INSERT INTO men_caps_info (cap_sizes, cap_number) VALUES ('L', 3);
-- cap four
INSERT INTO men_caps_info (cap_sizes, cap_number) VALUES ('XS', 4);
INSERT INTO men_caps_info (cap_sizes, cap_number) VALUES ('S', 4);
INSERT INTO men_caps_info (cap_sizes, cap_number) VALUES ('M', 4);
INSERT INTO men_caps_info (cap_sizes, cap_number) VALUES ('L', 4);

-- SHADES
CREATE TABLE shades(
    id serial NOT NULL PRIMARY KEY,
    price INT NOT NULL
);
INSERT INTO shades(id, price) VALUES(1, 550);
INSERT INTO shades(id, price) VALUES(2, 300);
INSERT INTO shades(id, price) VALUES(3, 250);
INSERT INTO shades(id, price) VALUES(4, 200);

-- ---------------------------------------------------------------
CREATE TABLE customerEnq(
    id SERIAL NOT NULL PRIMARY KEY,
    customer_name TEXT NOT NULL,
    customer_email TEXT NOT NULL,
    customer_msg TEXT NOT NULL
)