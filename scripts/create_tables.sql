-- create doctors, patients, and appointments tables

CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  surname varchar,
  given_name varchar,
  gender varchar,
  born_on date,
  specialty varchar
);

CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  surname varchar,
  given_name varchar,
  gender varchar,
  born_on date,
  insurance varchar
);
-- `appointments` - which should have date, time, and comment columns
--      (feel free to use the type `TEXT` for all three)
--      as well as columns referencing both doctors and patients.

CREATE TABLE appointments (
  id SERIAL PRIMARY KEY,
  date TEXT,
  time TEXT,
  comment TEXT,
  doctor_id integer references doctors,
  patient_id integer references patients
);
