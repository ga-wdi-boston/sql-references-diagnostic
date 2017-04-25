-- create doctors, patients, and appointments tables
CREATE TABLE doctors(
  id SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE,
  specialty TEST
);

CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE,
  insurance TEST
);

CREATE TABLE appointments(
  id SERIAL PRIMARY KEY,
  date DATE,
  time TIME,
  comment TEXT,
  doctore_id INTEGER REFERENCES doctor(id),
  patient_id INTEGER REFERENCES patients(id)
);
