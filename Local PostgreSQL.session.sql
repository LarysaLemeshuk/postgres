CREATE TABLE books(
    id serial PRIMARY KEY,
    autor varchar(256) ,
    name varchar(300),
    year varchar(4),
    publisher varchar(256),
    category varchar(256),
    synopsys text,
    quantity int,
    status boolean
);

ALTER TABLE books
ADD CONSTRAINT "quantity_more_zero" CHECK (quantity >= 0);

ALTER TABLE books
ADD CONSTRAINT "autor_name_unique" UNIQUE(autor, name);

INSERT INTO books(autor, name, quantity) VALUES
('Оноре де Бальзак', 'Гобсек', 200);

INSERT INTO books(autor, name, quantity) VALUES
('Оскар уайльд', 'Портрет Доріана Грея', 0);

INSERT INTO books(autor, name, quantity) VALUES
('Оноре де Бальзак', 'Шагренеа шкіра', 1500);

