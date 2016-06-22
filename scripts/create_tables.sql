-- create doctors, patients, and appointments tables
CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  surname varchar,
  given_name varchar,
  gender varchar,
  born_on integer,
  speciality varchar
)

CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  surname varchar,
  given_name varchar,
  gender varchar,
  born_on integer,
  insurance varchar
)

-- I've appended appointment_ to the column names in this table to avoid
-- confusion.
CREATE TABLE appointments (
  id SERIAL PRIMARY KEY,
  appointment_date TEXT,
  appointent_time TEXT,
  comment TEXT,
  doctor_id integer REFERENCES doctors,
  patient_id integer REFERENCES patients
)
