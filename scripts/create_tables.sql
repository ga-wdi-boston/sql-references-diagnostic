-- create doctors, patients, and appointments tables
-- create a table to store information about books

-- create a table to store information about patients
-- family_name,given_name,gender,born_on,insurance
CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE,
  insurance TEXT
);

-- create a table to store information about doctors
-- family_name,given_name,gender,born_on,specialty

CREATE TABLE doctors(
  id SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE,
  specialty TEXT
);

-- create a table to store information about doctors
-- family_name,given_name,gender,born_on,specialty

CREATE TABLE appointments(
  id SERIAL PRIMARY KEY,
  start_on INTEGER,
  length INTEGER,
  doctor_id INTEGER REFERENCES doctors(id),
  patient_id INTEGER REFERENCES patients(id)
);

CREATE INDEX ON appointments(doctor_id);
CREATE INDEX ON appointments(patient_id);
