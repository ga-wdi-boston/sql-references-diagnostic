-- create doctors, patients, and appointments tables
CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  surname VARCHAR,
  given_name VARCHAR,
  gender VARCHAR,
  born_on DATE,
  specialty VARCHAR
);

CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  surname VARCHAR,
  given_name VARCHAR,
  gender VARCHAR,
  born_on DATE,
  insurance VARCHAR
);

CREATE TABLE appointments (
  id SERIAL PRIMARY KEY,
  message TEXT,
  dates TEXT,
  times TEXT,
  doctor_id INTEGER REFERENCES doctors,
  patient_id INTEGER REFERENCES patients
);
