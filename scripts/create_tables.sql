-- create doctors, patients, and appointments tables
CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE,
  specialty TEXT
);

CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  insurance TEXT
);

Here the doctor_id and patient_id is a foreign key from the two respective tables where it is the PK on those tables.
CREATE TABLE appointments (
id SERIAL PRIMARY KEY,
appt_date DATE,
appt_time TIME,
comments TEXT,
doctor_id,
patient_id
);
