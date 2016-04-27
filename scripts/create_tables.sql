-- create doctors, patients, and appointments tables
CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  surname VARCHAR,
  given_name VARCHAR,
  gender VARCHAR(1),
  born_on DATE,
  specialty VARCHAR
);

CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  surname VARCHAR,
  given_name VARCHAR,
  gender VARCHAR(1),
  born_on DATE,
  insurance VARCHAR
);

CREATE TABLE appointments (
  id SERIAL PRIMARY KEY,
  date TEXT,
  time TEXT,
  comment TEXT,
  patient_id INTEGER REFERENCES patients,
  doctor_id INTEGER REFERENCES doctors
);
