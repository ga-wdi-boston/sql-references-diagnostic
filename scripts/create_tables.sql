-- create doctors, patients, and appointments tables
CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  surname CHARACTER VARYING,
  given_name CHARACTER VARYING,
  gender CHARACTER VARYING,
  dob DATE,
  specialty CHARACTER VARYING
);

CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  surname CHARACTER VARYING,
  given_name CHARACTER VARYING,
  gender CHARACTER VARYING,
  dob DATE,
  insurance CHARACTER VARYING
);

CREATE TABLE appointments (
  id SERIAL PRIMARY KEY,
  date TEXT,
  time TEXT,
  comment TEXT,
  FOREIGN KEY (doctor_id) REFERENCES doctors(id),
  FOREIGN KEY (patient_id) REFERENCES patients(id)
);
