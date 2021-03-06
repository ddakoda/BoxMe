psql

CREATE DATABASE box;
\c box

CREATE TABLE brands (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  description TEXT,
  primary_color_hex VARCHAR(7),
  secondary_color_hex VARCHAR(7),
  tertiary_color_hex VARCHAR(7)
);

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  password_hash VARCHAR(255)
);

CREATE TABLE items (
  id SERIAL PRIMARY KEY,
  brand_id INTEGER,
  name VARCHAR(255)
);

CREATE TABLE purchases (
  id SERIAL PRIMARY KEY,
  user_id INTEGER,
  item_id INTEGER,
  is_paid BOOLEAN
  -- stripe_id VARCHAR(255)   -- This is unique to the order... so muliple purchases can be combined using this field
);
