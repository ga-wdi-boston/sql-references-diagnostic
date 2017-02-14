-- create doctors, patients, and appointments tables

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
  app_date DATE,
  app_time TEXT,
  doctor_id INTEGER REFERENCES doctors(id),
  patient_id INTEGER REFERENCES patients(id),
  comment TEXT
);
