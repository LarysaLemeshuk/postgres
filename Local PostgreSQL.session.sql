/*
Задача: міні - ютуб
Таблиця контенту
- назва
- опис
- автор(юзер, який сьворив контент)
- дата створення
 Таблиця реакцій
 - is_liked:
 - null - користувач не ставив оцінку
 - true - контент лайкнули
 - false - контент диздайкнули

У контента може бути багато реакцій від користувачів
Реакції - звʼязок між користувачем і контентом

*/

CREATE TABLE contents(
    id serial PRIMARY KEY,
    name varchar(256) NOT NULL CHECK(name != ''),
    description text,
    author_id int REFERENCES users(id),
    created_at timestamp DEFAULT current_timestamp
);

CREATE TABLE reactions(
    conetn_id INT REFERENCES contents(id),
    user_id int REFERENCES users(id),
    is_liked boolean
);

INSERT INTO contents(name, author_id) VALUES -- додавання контенту
('funnu dogs', 3);

INSERT INTO reactions VALUES -- додати реакцію
(1, 1, true);