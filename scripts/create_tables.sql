-- create doctors, patients, and appointments tables

CREATE TABLE doctors(
  id SERIAL PRIMARY KEY,
  surname CHARACTER VARYING,
  given_name CHARACTER VARYING,
  gender CHARACTER VARYING(1),
  born_on DATE,
  specialty CHARACTER VARYING
);

CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  surname CHARACTER VARYING,
  given_name CHARACTER VARYING,
  gender CHARACTER VARYING(1),
  born_on DATE,
  insurance CHARACTER VARYING
);

CREATE TABLE appointments(
  id SERIAL PRIMARY KEY,
  dates TEXT,
  times TEXT,
  comment TEXT,
  doctors_id INTEGER REFERENCES doctors,
  patients_id INTEGER REFERENCES patients
);
