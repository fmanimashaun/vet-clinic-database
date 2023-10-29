/* Populate database with sample data. */
INSERT INTO animals(name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES
('Agumon','2000-02-03',0,true,10.23),
('Gabumon','2018-11-15',2,true,8),
('Pikachu','2021-01-07',1,false,15.04),
('Devimon','2017-05-12',5,true,11);

/* new insert statements */

INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES
('Charmander', '2020-02-08', 0, false, -11.00),
('Plantmon', '2021-11-15', 2, true, -5.7),
('Squirtle', '1993-04-02', 3, false, -12.13),
('Angemon', '2005-06-12', 1, true, -45.00),
('Boarmon', '2005-06-07', 7, true, 20.4),
('Blossom', '1998-10-13', 3, true, 17.00),
('Ditto', '2022-05-14', 4, true, 22.00);

-- Insert data into the "owners" table:
INSERT INTO owners (full_name, age) VALUES
('Sam Smith', 34),
('Jennifer Orwell', 19),
('Bob', 45),
('Melody Pond', 77),
('Dean Winchester', 14),
('Jodie Whittaker', 38);

-- Insert data into the "species" table:
INSERT INTO species (name) VALUES
('Pokemon'),
('Digimon');

-- Insert data for vets:
INSERT INTO vets (name, age, date_of_graduation) VALUES
('Vet William Tatcher', 45, '2000-04-23'),
('Vet Maisy Smith', 26, '2019-01-17'),
('Vet Stephanie Mendez', 64, '1981-05-04'),
('Vet Jack Harkness', 38, '2008-06-08');

-- Insert data for specializations:
INSERT INTO specializations (vet_id, species_id) VALUES
(1, (SELECT id FROM species WHERE name = 'Pokemon')),
(3, (SELECT id FROM species WHERE name = 'Digimon')),
(3, (SELECT id FROM species WHERE name = 'Pokemon')),
(4, (SELECT id FROM species WHERE name = 'Digimon'));

-- Insert data for visits:
INSERT INTO visits (animal_id, vet_id, visit_date) VALUES
((SELECT id FROM animals WHERE name = 'Agumon'), 1, '2020-05-24'),
((SELECT id FROM animals WHERE name = 'Agumon'), 3, '2020-07-22'),
((SELECT id FROM animals WHERE name = 'Gabumon'), 4, '2021-02-02'),
((SELECT id FROM animals WHERE name = 'Pikachu'), 2, '2020-01-05'),
((SELECT id FROM animals WHERE name = 'Pikachu'), 2, '2020-03-08'),
((SELECT id FROM animals WHERE name = 'Pikachu'), 2, '2020-05-14'),
((SELECT id FROM animals WHERE name = 'Devimon'), 3, '2021-05-04'),
((SELECT id FROM animals WHERE name = 'Charmander'), 4, '2021-02-24'),
((SELECT id FROM animals WHERE name = 'Plantmon'), 2, '2019-12-21'),
((SELECT id FROM animals WHERE name = 'Plantmon'), 1, '2020-08-10'),
((SELECT id FROM animals WHERE name = 'Plantmon'), 2, '2021-04-07'),
((SELECT id FROM animals WHERE name = 'Squirtle'), 3, '2019-09-29'),
((SELECT id FROM animals WHERE name = 'Angemon'), 4, '2020-10-03'),
((SELECT id FROM animals WHERE name = 'Angemon'), 4, '2020-11-04'),
((SELECT id FROM animals WHERE name = 'Boarmon'), 2, '2019-01-24'),
((SELECT id FROM animals WHERE name = 'Boarmon'), 2, '2019-05-15'),
((SELECT id FROM animals WHERE name = 'Boarmon'), 2, '2020-02-27'),
((SELECT id FROM animals WHERE name = 'Boarmon'), 2, '2020-08-03'),
((SELECT id FROM animals WHERE name = 'Blossom'), 3, '2020-05-24'),
((SELECT id FROM animals WHERE name = 'Blossom'), 1, '2021-01-11');

