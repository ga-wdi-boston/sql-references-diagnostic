-- create doctors, patients, and appointments tables
CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  surname CHARACTER VARYING,
  given_name CHARACTER VARYING,
  gender CHARACTER,
  dob DATE,
  specialty CHARACTER VARYING
);

CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  surname CHARACTER VARYING,
  given_name CHARACTER VARYING,
  gender CHARACTER,
  dob DATE,
  insurance CHARACTER VARYING
);

CREATE TABLE appointments (
  id SERIAL PRIMARY KEY,
  date DATE,
  time TEXT,
  comment TEXT,
  doctor_id INTEGER REFERENCES doctor(id),
  patient INTEGER REFERENCES patient(id)
);
