/* Database schema to keep the structure of entire database. */

CREATE DATABASE vet_clinic;

CREATE TABLE animals (
  id INT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(50),
  date_of_birth DATE,
  escape_attempts INT,
  neutered BOOLEAN,
  weight_kg DECIMAL(10,2),
   PRIMARY KEY(id)
);

CREATE TABLE owners (
  id INT GENERATED ALWAYS AS IDENTITY,
  full_name VARCHAR(255),
  age INT,
  PRIMARY KEY(id)
);


CREATE TABLE species (
  id INT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(50),
  PRIMARY KEY(id)
);

/* Add a column species of type string to your animals table */
ALTER TABLE animals ADD species varchar(255);

-- First, remove the "species" column
ALTER TABLE animals DROP COLUMN species;

-- Then, add the "species_id" column as a foreign key referencing the "species" table
ALTER TABLE animals ADD COLUMN species_id INT,ADD FOREIGN KEY (species_id) REFERENCES species(id);

-- Add the "owner_id" column as a foreign key referencing the "owners" table
ALTER TABLE animals ADD COLUMN owner_id INT, ADD FOREIGN KEY (owner_id) REFERENCES owners(id);

CREATE TABLE vets (
  id INT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(255),
  age INT,
  date_of_graduation DATE,
  PRIMARY KEY(id)
);

CREATE TABLE specializations (
  id INT GENERATED ALWAYS AS IDENTITY,
  vet_id INT,
  species_id INT,
  FOREIGN KEY (vet_id) REFERENCES vets(id),
  FOREIGN KEY (species_id) REFERENCES species(id),
  PRIMARY KEY(id)
);

CREATE TABLE visits (
  id INT GENERATED ALWAYS AS IDENTITY,
  animal_id INT,
  vet_id INT,
  visit_date DATE,
  FOREIGN KEY (animal_id) REFERENCES animals(id),
  FOREIGN KEY (vet_id) REFERENCES vets(id),
  PRIMARY KEY(id)
);

-- Add an email column to your owners table
ALTER TABLE owners ADD COLUMN email VARCHAR(120);
