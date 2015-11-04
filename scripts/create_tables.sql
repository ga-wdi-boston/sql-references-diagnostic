-- create doctors, patients, and appointments tables

-- step 1. create the table
CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  surname VARCHAR,
  given_name VARCHAR,
  gender VARCHAR(1),
  dob DATE,
  specialty VARCHAR
);

CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  surname VARCHAR,
  given_name VARCHAR,
  gender VARCHAR(1),
  dob DATE,
  insurance VARCHAR

);

CREATE TABLE appointments (
  id SERIAL PRIMARY KEY,
  appt_date TEXT,
  appt_time TEXT,
  comments TEXT,
  -- connect doctors and patients
  doctor_id INTEGER REFERENCES doctors(id),
  patient_id INTEGER REFERENCES patients(id)
);
