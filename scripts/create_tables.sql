-- create doctors, patients, and appointments tables
CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  surname CHARACTER VARYING,
  given_name CHARACTER VARYING,
  dob DATE,
  specialty CHARACTER VARYING
  );

CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  surname CHARACTER VARYING
  given_name CHARACTER VARYING,
  gender CHARACTER VARYING,
  dob DATE,
  insurance CHARACTER VARYING --I would use INTEGER but insurance numbers are usually mixed between numbers and letters.
);

CREATE TABLE appointments (
  id SERIAL PRIMARY KEY,
  date TEXT,
  time TEXT,
  patient_comment_columns TEXT REFERENCES patient(id),
  doctor_comment_columns TEXT REFERENCES doctors(id)
);
  --`appointments` - which should have date, time, and comment columns (feel free to use the type `TEXT` for all three) as well as columns referencing both doctors and patients.

