CREATE DATABASE lab2;

CREATE TABLE countries(
  country_id serial primary key,
  country_name varchar(256),
  region_id int,
  population int
);
INSERT INTO  countries values (DEFAULT , 'RUSSIA', 14, 25000000);
INSERT INTO countries (country_id, country_name) values (default , 'RUSSIA');
INSERT INTO countries (region_id) values (NULL);
INSERT INTO countries values (default , 'POLAND', null , 55500000);
INSERT INTO countries values  (default ,'SPAIN', 33, 179002300),
                              (default , 'AUSTRALIA', 1 , 1503240000),
                              (default , 'JAPAN', 8, 140012000);
alter table countries alter column country_name set default 'KAZAKHSTAN';
INSERT INTO countries (country_name) values (default);
INSERT INTO countries values (default , default , default, default);
CREATE TABLE countries_new(
  LIKE countries
);
INSERT INTO countries_new SELECT * FROM countries RETURNING *;
update countries set region_id = 1 WHERE region_id IS NULL;
update countries set population = population*1.1 returning  country_name, population as "New Population";
DELETE FROM countries WHERE population < 100000;
DELETE FROM countries_new AS c USING countries AS n WHERE c.country_id = n.country_id RETURNING *;
DELETE FROM countries * returning *;
SELECT * FROM countries;
