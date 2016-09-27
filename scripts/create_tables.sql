-- create doctors, patients, and appointments tables
CREATE TABLE doctors(
  id SERIAL PRIMARY KEY
  surname TEXT
  given_name TEXT
  gender VARCHAR(1)
  born_on DATE
  specialty TEXT
);

CREATE TABLE patients(
  id SERIAL PRIMARY KEY
  surname TEXT
  given_name TEXT
  gender VARCHAR(1)
  born_on DATE
  insurance TEXT
);

CREATE TABLE appointments(
  id SERIAL PRIMARY KEY
  date DATE
  time TEXT
  comment TEXT
  patient_id INTEGER REFERENCES patients(id),
  doctor_id INTEGER REFERENCES doctors(id)
);
CREATE INDEX ON appointments(patient_id);
CREATE INDEX ON appointments(doctor_id);
