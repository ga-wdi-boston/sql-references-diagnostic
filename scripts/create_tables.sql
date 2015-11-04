-- create doctors, patients, and appointments tables

CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  surname CHARACTER VARYING,
  given_name CHARACTER VARYING,
  gender CHARACTER VARYING,
  dob DATE
  specialty CHARACTER VARYING
);

CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  surname CHARACTER VARYING,
  given_name CHARACTER VARYING,
  gender CHARACTER VARYING,
  dob DATE
  insurance CHARACTER VARYING
);

CREATE TABLE appointments (
  id SERIAL PRIMARY KEY,
  date DATE,
  time TIME,
  comment CHARACTER VARYING,
  doctor_id integer references doctors(id),
  patient_id integer references patients(id)
);
