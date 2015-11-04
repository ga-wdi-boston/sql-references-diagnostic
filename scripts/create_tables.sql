-- create doctors, patients, and appointments tables
CREATE TABLE doctors (
  id Serial Primary Key,
  surname CHARACTER VARYING,
  given_name CHARACTER VARYING,
  gender CHARACTER VARYING,
  dob date,
  specialty CHARACTER VARYING
);

CREATE TABLE patients (
  id Serial Primary Key,
  surname CHARACTER VARYING,
  given_name CHARACTER VARYING,
  gender CHARACTER VARYING,
  dob date,
  insurance CHARACTER VARYING
);

CREATE TABLE appointments (
  id Serial Primary Key,
  date TEXT,
  time TEXT,
  comment TEXT,
  patient_id INTEGER REFERENCES patients(id),
  doctor_id INTEGER REFERENCES doctors(id)
);
