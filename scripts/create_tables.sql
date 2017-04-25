-- create doctors, patients, and appointments tables
-- create doctors, patients, and appointments tables

CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE,
  specialty TEXT
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
  attending_physician TEXT references doctors(id),
  patient_id TEXT references patients(id),
  appt_date DATE,
  appt_time TIME,
  comments TEXT
);
