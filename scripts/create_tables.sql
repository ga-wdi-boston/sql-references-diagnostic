-- create doctors, patients, and appointments tables
CREATE TABLE doctors(
  id SERIAL PRIMARY KEY,
  surname CHARACTER VARYING,
  given_name CHARACTER VARYING,
  gender CHARACTER VARYING,
  dob DATE,
  speciality CHARACTER VARYING
)

CREATE TABLE appointments(
  id SERIAL PRIMARY KEY,
  apptdate TEXT,
  appttime TEXT,
  comments TEXT,
  patient_id INTEGER REFERENCES appointments(id),
  doctor_id INTEGER REFERENCES doctors(id)
)

CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  surname CHARACTER VARYING,
  given_name CHARACTER VARYING,
  gender CHARACTER VARYING,
  dob DATE,
  insurance CHARACTER VARYING
)
