-- CREATE THIS TABLE AND IMPORT csv file found in the project folder into postgres pgAdmin TO INSERT THE DATA --

CREATE TABLE countries (
  id SERIAL PRIMARY KEY,
  country_code VARCHAR(2) NOT NULL,
  country_name VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS visited_countries, users;

CREATE TABLE users(
id SERIAL PRIMARY KEY,
name VARCHAR(15) UNIQUE NOT NULL,
color VARCHAR(15)
);

CREATE TABLE visited_countries(
id SERIAL PRIMARY KEY,
country_code CHAR(2) NOT NULL,
user_id INTEGER REFERENCES users(id)
);

INSERT INTO users (name, color)
VALUES ('George', 'teal'), ('Dorcas', 'powderblue');

INSERT INTO visited_countries (country_code, user_id)
VALUES ('FR', 1), ('GB', 1), ('CA', 2), ('FR', 2 );

SELECT *
FROM visited_countries
JOIN users
ON users.id = user_id;