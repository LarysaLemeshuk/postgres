DROP TABLE messages;
CREATE TABLE messages(
    id serial PRIMARY KEY,
    body text NOT NULL CHECK (body != ''),
    author varchar(256) NOT NULL CHECK (author != ''),
    created_at timestamp DEFAULT current_timestamp,
    is_read boolean DEFAULT false
);
-- INSERT INTO messages
-- VALUES('Hello John!', 'Me');

INSERT INTO messages (author, body)
VALUES('John', 'Hello.'),
    ('Me', 'Co to coffe!'),
    ('John', 'Go.');

INSERT INTO messages (author, body)
VALUES('Peter', 'Hello.'),
    ('Peter', 'Hello.');

INSERT INTO messages(id, body, author)
VALUES(NULL, 'text4', 'Message autor4'); -- помилка
-- ключ - ознака(найчастіше штучна) яка відрізняє один запис від іншого
-- первинний ключ - використовується для того, щоб ключу дати обмеження унікальності