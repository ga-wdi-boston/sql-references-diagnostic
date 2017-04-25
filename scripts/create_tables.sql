-- create doctors, patients, and appointments tables
CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE,
  speciality TEXT
);
CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE,
  insurance TEXT
);
CREATE TABLE appointments (
  id SERIAL PRIMARY KEY,
  date_on DATE,
  time_on  TIME,
  comment TEXT,
  doctors_id KEY,
  patients_id KEY
);
