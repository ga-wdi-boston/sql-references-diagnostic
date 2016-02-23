-- create doctors, patients, and appointments tables
CREATE TABLE doctors(
  id SERIAL PRIMARY KEY,
  surname TEXT,
  given_name TEXT,
  gender TEXT,
  born_on TEXT,
  specialty TEXT
);

CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  surname TEXT,
  given_name TEXT,
  gender TEXT,
  born_on TEXT,
  insurance TEXT
);

CREATE TABLE appointments(
  id SERIAL PRIMARY KEY,
  appt_date TEXT,
  appt_time TEXT,
  comment TEXT,
  patient_id INTEGER REFERENCES patients,
  doctor_id INTEGER REFERENCES doctors
);
