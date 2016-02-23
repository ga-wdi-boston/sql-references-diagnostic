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
  patient_surname VARCHAR,
  patient_given_name VARCHAR,
  doctor VARCHAR,
  appt_date DATE,
  appt_time TEXT,
  comment TEXT
)
;
