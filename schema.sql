vet_clinic=# CREATE TABLE animals (
  id INTEGER PRIMARY KEY DEFAULT nextval('animals_id_seq'),
  name VARCHAR(255),
  date_of_birth DATE,
  escape_attempts INTEGER,
  neutered BOOLEAN,
  weight_kg DECIMAL(5,2)
);
ALTER TABLE animals ADD COLUMN species VARCHAR(255);
ALTER TABLE

CREATE TABLE vets (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    age INTEGER,
    date_of_graduation DATE
);
CREATE TABLE

CREATE TABLE specializations (
    id SERIAL PRIMARY KEY,
    vet_id INTEGER REFERENCES vets(id),
    species_id INTEGER REFERENCES species(id),
    UNIQUE (vet_id, species_id)
);
CREATE TABLE

CREATE TABLE visits (
    id SERIAL PRIMARY KEY,
    animal_id INTEGER REFERENCES animals(id),
    vet_id INTEGER REFERENCES vets(id),
    visit_date DATE,
    UNIQUE (animal_id, vet_id, visit_date)
);
CREATE TABLE

ALTER TABLE owners ADD COLUMN email VARCHAR(120);
ALTER TABLE

ALTER TABLE visits ADD COLUMN date_of_visit TIMESTAMP;
--To improve performance, we created an index on the vet_id column.
CREATE INDEX visits_vet_id_idx ON visits (vet_id);
CREATE INDEX visits_vet_id_idx ON visits (vet_id);
CREATE INDEX owners_email_idx ON owners (email);
