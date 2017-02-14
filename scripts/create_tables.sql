-- create doctors, patients, and appointments tables
CREATE TABLE doctors(
  id SERIAL PRIMARY KEY,
  full_name TEXT
);

CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  full_name TEXT
);

CREATE TABLE appointments(
  id SERIAL PRIMARY KEY,
  day DATE,
  hour TIME,
  comment TEXT,
  patient_id INTEGER REFERENCES patients(id),
  doctor_id INTEGER REFERENCES doctors(id)

);
