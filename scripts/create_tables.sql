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
  date TEXT,
  time TEXT,
  comment TEXT
  doctor_id TEXT REFERENCES doctors,
  patient_id TEXT REFERENCES patients
);
