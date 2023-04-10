/* Populate database with sample data. */

vet_clinic=# INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) 
VALUES ('Agumon', '2020-02-03', 0, true, 10.23);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) 
VALUES ('Gabumon', '2018-11-15', 2, true, 8);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) 
VALUES ('Pikachu', '2021-01-07', 1, false, 15.04);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) 
VALUES ('Devimon', '2017-05-12', 5, true, 11);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species)
VALUES ('Charmander', '2020-02-08', 0, FALSE, -11.0, '');

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species) 
VALUES ('Plantmon', '2021-11-15', 2, TRUE, -5.7, '');

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species) 
VALUES ('Squirtle', '1993-04-02', 3, FALSE, -12.13, '');

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species) 
VALUES ('Angemon', '2005-06-12', 1, TRUE, -45.0, '');

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species) 
VALUES ('Boarmon', '2005-06-07', 7, TRUE, 20.4, '');

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species) 
VALUES ('Blossom', '1998-10-13', 3, TRUE, 17.0, '');

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species) 
VALUES ('Ditto', '2022-05-14', 4, TRUE, 22.0, '');

INSERT INTO vets (name, age, date_of_graduation) 
VALUES ('William Tatcher', 45, '2000-04-23');

INSERT INTO vets (name, age, date_of_graduation) 
VALUES ('Maisy Smith', 26, '2019-01-17');

INSERT INTO vets (name, age, date_of_graduation) 
VALUES ('Stephanie Mendez', 64, '1981-05-04');

INSERT INTO vets (name, age, date_of_graduation) 
VALUES ('Jack Harkness', 38, '2008-06-08');
-- This comment section is included to demonstrate how I obtained the necessary data, 
-- which will allow me to add additional information to the desired table.
-- vet_clinic=# SELECT id FROM vets WHERE name = 'William Tatcher';
--  id 
-- ----
--   1
-- (1 row)

-- vet_clinic=# SELECT id FROM vets WHERE name = 'Stephanie Mendez';
--  id 
-- ----
--   3
-- (1 row)

-- vet_clinic=# SELECT id FROM vets WHERE name = 'Jack Harkness';
--  id 
-- ----
--   4
-- (1 row)

-- vet_clinic=# SELECT id FROM species WHERE name = 'Pokemon';
--  id 
-- ----
--   1
-- (1 row)

-- vet_clinic=# SELECT id FROM species WHERE name = 'Digimon';
--  id 
-- ----
--   2
-- (1 row)

vet_clinic=# INSERT INTO specializations (vet_id, species_id) VALUES
(1, 1), -- William Tatcher is specialized in Pokemon
(3, 1), -- Stephanie Mendez is specialized in Pokemon
(3, 2), -- Stephanie Mendez is specialized in Digimon
(4, 2); -- Jack Harkness is specialized in Digimon

INSERT INTO visits(animal_id, vet_id, visit_date)
VALUES (8, 1, '2020-05-24');

INSERT INTO visits(animal_id, vet_id, visit_date)
VALUES (8, 3, '2020-07-22');

INSERT INTO visits(animal_id, vet_id, visit_date)
VALUES (9, 4, '2021-02-02');

INSERT INTO visits(animal_id, vet_id, visit_date)
VALUES (10, 2, '2020-01-05');

INSERT INTO visits(animal_id, vet_id, visit_date)
VALUES (10, 2, '2020-03-08');

INSERT INTO visits(animal_id, vet_id, visit_date)
VALUES (10, 2, '2020-05-14');

INSERT INTO visits(animal_id, vet_id, visit_date)
VALUES (11, 3, '2021-05-04');

VALUES (17, 1, '2021-01-11'); vet_id, visit_date)
