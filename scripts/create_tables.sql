-- create doctors, patients, and appointments tables
-- create doctors
CREATE TABLE doctors(
  id SERIAL PRIMARY KEY,
  surname TEXT,
  given_name TEXT,
  gender TEXT,
  dob TEXT,
  specialty TEXT
);
-- create patients
CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  surname TEXT,
  given_name TEXT,
  gender TEXT,
  dob TEXT,
  insurance TEXT
);
-- create appointments
CREATE TABLE appointments(
  date TEXT, time TEXT, comment TEXT,
  doctor_id INTEGER REFERENCES doctors(id),
  patient_id INTEGER REFERENCES patients(id)
);
