CREATE TABLE coordinates(
    x INT ,
    y INT,
    z INT,
   CONSTRAINT "UNIQUE_COORD" PRIMARY KEY(x, y, z)
);

--(11, 22, 36);
--(252, 6, 88);
--(11, 22, 36); -- помилка

INSERT INTO coordinates VALUES
(11, 22, 36),
(252, 76, 88);

INSERT INTO coordinates VALUES
(11, 22, 36);-- тут повернулась помилка

INSERT INTO coordinates VALUES
(111, 223, 376),
(2582, 79, 88);