-- create doctors, patients, and appointments tables
CREATE TABLE doctors(
  id SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE,
  specialty TEXT

);
CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  insurance TEXT,
  born_on DATE
);
CREATE TABLE appointments(
  id SERIAL PRIMARY KEY,
  start_at DATE,
  length TIMESTAMP,
  comments TEXT
);
