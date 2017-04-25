-- create doctors, patients, and appointments tables

CREATE TABLE doctors(
  id SERIAL PRIMARY KEY,
  specialty TEXT,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE
);

CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  insurance TEXT,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE
);

CREATE TABLE appointments(
  id SERIAL PRIMARY KEY,
  patient_id INTEGER REFERENCES patients(id),
  doctor_id INTEGER REFERENCES doctors(id),
  apointment_date DATE
);

CREATE INDEX ON appointments(patient_id);
CREATE INDEX ON appointments(doctor_id);
