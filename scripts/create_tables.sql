-- create doctors, patients, and appointments tables
-- Create three tables using the file scripts/create_tables.sql (don't forget
--   id columns for all tables):
--
-- doctors - use the first line of data/doctors.csv for the column names
--
-- patients - use the first line of data/patients.csv for the column names
--
-- appointments - which should have date, time, and comment columns (feel free
--   to use the type TEXT for all three) as well as columns referencing both
--   doctors and patients


CREATE TABLE doctors(
  id SERIAL PRIMARY KEY,
  surname TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE,
  specialty TEXT
);

CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  surname TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE,
  insurance TEXT
);

CREATE TABLE appointments(
  id SERIAL PRIMARY KEY,
  app_date TEXT,
  app_time TEXT,
  comment TEXT,
  patient_id INTEGER REFERENCES patients(id),
  doctor_id INTEGER REFERENCES doctors(id)
);
