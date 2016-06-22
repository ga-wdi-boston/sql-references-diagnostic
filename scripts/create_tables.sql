-- create doctors, patients, and appointments tables
CREATE TABLE doctors(
  id SERIAL PRIMARY KEY,
  surname VARCHAR,
  given_name VARCHAR,
  gender VARCHAR,
  born_on DATE,
  specialty VARCHAR
);

surname,given_name,gender,born_on,insurance
CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  surname VARCHAR,
  given_name VARCHAR,
  gender VARCHAR,
  born_on DATE,
  insurance VARCHAR
);
CREATE TABLE appointments(
  id SERIAL PRIMARY KEY,
  dates TEXT,
  times TEXT,
  comment TEXT,
  doctor_id INTEGER REFERENCES doctors,
  patient_id INTEGER REFERENCES patients
);
