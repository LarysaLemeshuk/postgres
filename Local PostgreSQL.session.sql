/*
 в таблиці products створити генерований стовпець is_luxury
 
 якщо prise > 800 -> true
 else -> false
 
 */
CREATE TABLE products_version_2(
    id serial PRIMARY KEY,
    brand varchar(256) NOT NULL CHECK(brand != ''),
    model varchar(256) NOT NULL CHECK(model != ''),
    prise numeric(8, 2) NOT NULL,
    is_luxury boolean GENERATED ALWAYS AS(prise > 800) STORED
);
INSERT INTO products_version_2 (brand, model, prise)
VALUES 
('Iphone', '15 Pro', 1300),
('Samsung', 'S10', 400),
('Xiaomi', 'Model 5', 200);


ALTER TABLE products
ADD COLUMN is_luxury boolean GENERATED ALWAYS AS (price > 800) STORED;