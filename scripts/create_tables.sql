-- create doctors, patients, and appointments tables
CREATE TABLE doctors  (
  id SERIAL PRIMARY KEY,
  surname CHARACTER VARYING,
  given_name CHARACTER VARYING,
  gender CHARACTER VARYING(1),
  born_on DATE,
  specialty CHARACTER VARYING
)
;

CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  surname CHARACTER VARYING,
  given_name CHARACTER VARYING,
  gender CHARACTER VARYING(1),
  born_on DATE,
  insurance CHARACTER VARYING
)
;

CREATE TABLE appointments (
  id SERIAL PRIMARY KEY,
  day TEXT,
  hour TEXT,
  comment TEXT,
  patient_id INTEGER REFERENCES patients,
  doctor_id INTEGER REFERENCES doctors
)
;
