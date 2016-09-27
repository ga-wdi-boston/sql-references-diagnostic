-- create doctors, patients, and appointments tables
CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  surname TEXT,
  given_name TEXT,
  gender CHAR(1),
  born_on DATE,
  insurance TEXT
);

CREATE TABLE doctors(
  id SERIAL PRIMARY KEY,
  surname TEXT,
  given_name TEXT,
  gender CHAR(1),
  born_on DATE,
  specialty TEXT
);

CREATE TABLE appointments (
  id SERIAL PRIMARY KEY,
  App_date DATE,
  App_time TIMESTAMP,
  comment TEXT,
  patient_id INTEGER REFERENCES patients(id),
  doctor_id INTEGER REFERENCES doctors(id)
);

CREATE INDEX ON appointments(patient_id);
CREATE INDEX ON appointments(doctor_id);
