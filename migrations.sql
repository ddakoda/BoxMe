psql

CREATE DATABASE box;
\c box

CREATE TABLE purchases (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  product INTEGER,
  price VARCHAR(255)
);

CREATE TABLE items (
  id SERIAL PRIMARY KEY,
  product_number INTEGER,
  is_paid BOOLEAN
);

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  purchase_id INTEGER,
  item_id INTEGER
);
