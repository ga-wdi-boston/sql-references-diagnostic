-- create doctors, patients, and appointments tables
-- family_name,given_name,gender,born_on,specialty -->
CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  born_on TEXT,
  speciality TEXT
);

-- family_name,given_name,gender,born_on,insurance -->
CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  born_on TEXT,
  insurance TEXT
);

CREATE TABLE appointments (
  id SERIAL PRIMARY KEY,
  apt_date DATE,
  apt_time TIME,
  comment TEXT,
  doctor_id INTEGER REFERENCES doctors(id),
  patient_id INTEGER REFERENCES patients(id)
);
CREATE INDEX ON appointments(doctor_id);
CREATE INDEX ON appointments(patient_id);
