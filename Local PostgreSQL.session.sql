

CREATE TABLE orders(
    id serial PRIMARY KEY,
    created_at timestamp NOT NULL DEFAULT current_timestamp,
    custumer_id int REFERENCES users(id)
);

DROP TABLE orders;
ALTER TABLE users
ADD COLUMN id serial PRIMARY KEY;

CREATE TABLE oreders_to_produts(
    product_id int REFERENCES products(id),
    orders_id int REFERENCES orders(id),
    quntity int,
    PRIMARY KEY(orders_id, product_id)
);


-- Оформлення замовлення для юзера
-- 1 створили замовлення
INSERT INTO orders(custumer_id) VALUES(2);
-- 2 наповнити замовлення
INSERT INTO oreders_to_produts (product_id, orders_id, quntity)VALUES
(2, 1, 1),
(3, 1, 2),
(4, 1, 1);
