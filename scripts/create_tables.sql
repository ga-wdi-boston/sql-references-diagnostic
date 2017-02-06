-- create doctors, patients, and appointments tables
-- create doctors
CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  dob DATE,
  specialty TEXT
);
-- create patients
CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  dob DATE,
  insurance TEXT
);
-- create appointments
CREATE TABLE appointments (
  date DATE,
  time TIME,
  comment TEXT,
  doctor_id INTEGER REFERENCES doctors(id),
  patient_id INTEGER REFERENCES patients(id)
);
