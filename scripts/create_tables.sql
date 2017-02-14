-- create doctors, patients, and appointments tables

-- family_name,given_name,gender,born_on,specialty
CREATE TABLE doctors(
  id SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE,
  specialty TEXT,
);

-- family_name,given_name,gender,born_on,insurance
CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE,
  insurance TEXT,
);

CREATE TABLE appointments(
  id SERIAL PRIMARY KEY,
  date DATE,
  time TIME,
  patient_id INTEGER REFERENCES patients(id),
  doctor_id INTEGER REFERENCES doctors(id)
);
CREATE INDEX ON appointments(patient_id);
CREATE INDEX ON appointments(doctor_id);
