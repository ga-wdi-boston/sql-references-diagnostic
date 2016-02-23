-- create doctors, patients, and appointments tables
CREATE TABLE doctors(
  id SERIAL PRIMARY KEY,
  surname VARCHAR,
  given_name VARCHAR,
  gender VARCHAR,
  born_on DATE,
  specialty VARCHAR
);

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
  appt_date TEXT,
  appt_time TEXT,
  comments TEXT,
  patient_id INTEGER NOT NULL REFERENCES patients,
  doctor_id INTEGER NOT NULL REFERENCES doctors
);
