CREATE TABLE users(
    first_name VARCHAR(64),
    last_name VARCHAR(64),
    biography text,
    gender VARCHAR(30),
    is_subscribe boolean,
    birthday date,
    foot_size smallint,
    height numeric(5, 2)
);

INSERT INTO users VALUES('John', 'Doe', 'Тут може бути велика розповідь про ДЖона', 'male', true, '2004-09-14', 43, 1.85);

INSERT INTO users VALUES('Susan', 'Doe', 'Тут може бути велика розповідь про Сьюзан', 'female', true, '2004-09-15', 38, 1.65),
('Peter', 'Doe', 'Тут може бути велика розповідь про Пітера', 'male', true, '2004-12-14', 45, 1.92);

INSERT INTO users VALUES('Blaeke', 'Doe', 'Тут може бути велика розповідь про Блейка', 'male', false, '2000-10-14', NULL, NULL);