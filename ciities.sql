CREATE DATABASE cities; 
----CREATE DATABASE cities;

CREATE TABLE city_adjectives (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    adjectives VARCHAR(255) NOT NULL
);  ----CREATE TABLE city_populations (
    --id SERIAL PRIMARY KEY,
    --name VARCHAR(255) NOT NULL,
    --population INTEGER NOT NULL
    --);


INSERT INTO city_adjectives (name, adjectives) VALUES ('Istanbul', 'beautiful');
INSERT INTO city_adjectives (name, adjectives) VALUES ('London', 'colorful');
INSERT INTO city_adjectives (name, adjectives) VALUES ('Paris', 'nice');

----INSERT INTO city_populations (name, population) VALUES ('New York', 8537673);
----INSERT INTO city_populations (name, population) VALUES ('Los Angeles', 3977683);
----INSERT INTO city_populations (name, population) VALUES ('Chicago', 2705994);


SELECT * FROM city_adjectives;
----SELECT * FROM city_populations;
