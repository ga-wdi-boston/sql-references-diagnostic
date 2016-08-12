-- create doctors, patients, and appointments tables
CREATE TABLE doctors(
  id SERIAL PRIMARY KEY
  surname TEXT,
  given_name TEXT,
  specialty TEXT,
  gender TEXT,
  born_on DATE

);
CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  surname TEXT,
  given_name TEXT,
  insurance TEXT,
  gender TEXT,
  born_on DATE
);
CREATE TABLE appointments(
  id SERIAL PRIMARY KEY,
  aptdate TIMESTAMP,
  doc_comment TEXT,
  doctor_id INTEGER REFERENCES doctors(id),
  patient_id INTEGER REFERENCES patients(id)
);
