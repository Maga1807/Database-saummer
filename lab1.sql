CREATE DATABASE lab1;

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    firstname varchar(50),
    lastname varchar (50)
);

ALTER TABLE users
ADD COLUMN isadmin int;

ALTER TABLE users
ALTER COLUMN isadmin TYPE BOOLEAN using users.isadmin::BOOLEAN;

ALTER TABLE users
ALTER COLUMN isadmin SET DEFAULT FALSE;

CREATE TABLE tasks(
    id SERIAL,
    name varchar(50),
    user_id INTEGER
);

DROP TABLE tasks;

DROP DATABASE lab1;
