-- create doctors, patients, and appointments tables
-- surname,given_name,gender,dob,specialty
CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  surname CHARACTER VARYING,
  given_name CHARACTER VARYING,
  gender CHARACTER VARYING,
  dob DATE,
  specialty CHARACTER VARYING
  );


-- surname,given_name,gender,dob,insurance
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
  appointment_date TEXT,
  appointment_time TEXT,
  comments TEXT,
  doctor_id INTEGER REFERENCES doctors(id),
  patient_id INTEGER REFERENCES patients(id)
  );
