-- create doctors, patients, and appointments tables
CREATE TABLE doctors(
  id SERIAL PRIMARY KEY,
  surname VARCHAR,
  given_name VARCHAR,
  gender VARCHAR,
  dob INTEGER,
  specialty VARCHAR
);

CREATE TABLE patients(
id SERIAL PRIMARY KEY,
surname VARCHAR
given_name VARCHAR
gender VARCHAR
dob INTEGER
insurance VARCHAR
);

CREATE TABLE appointments(
id SERIAL PRIMARY KEY
time TEXT,
date TEXT,
comment TEXT,
patient_id INTEGER REFERENCES patients(id),
doctor_id INTEGER) REFERENCES doctors (id)
);
