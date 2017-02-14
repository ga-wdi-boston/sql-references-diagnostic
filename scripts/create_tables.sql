-- create doctors, patients, and appointments tables
CREATE TABLE doctors (
  ID SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  dob DATE,
  specialty TEXT
);

CREATE TABLE patients (
  ID SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  dob DATE,
  insurance TEXT
);

CREATE TABLE appointments (
  ID SERIAL PRIMARY KEY,
  start_time TIME,
  start_date DATE,
  doctor_id INTEGER REFERENCES doctors(id),
  patient_id INTEGER REFERENCES patients(id)
)
