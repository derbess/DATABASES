CREATE DATABASE lab1;

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  firstname VARCHAR(50),
  lastname VARCHAR(50)
);

SELECT * FROM users;

ALTER TABLE users
    ADD COLUMN isadmin INT;

ALTER TABLE users
    ALTER COLUMN isadmin TYPE BOOLEAN USING isadmin::boolean;

ALTER TABLE users
    ALTER COLUMN isadmin SET DEFAULT false;

ALTER TABLE users
    ADD CONSTRAINT a PRIMARY KEY(id);

CREATE  TABLE tasks(
  id SERIAL,
  name VARCHAR(50),
  user_id INT
);

SELECT  *FROM  tasks;

DROP TABLE tasks;

DROP DATABASE lab1;