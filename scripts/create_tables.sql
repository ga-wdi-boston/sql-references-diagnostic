-- create doctors, patients, and appointments tables

CREATE TABLE doctors(
  id SERIAL PRIMARY KEY,
  surname VARCHAR,
  given_name VARCHAR,
  gender CHARACTER VARYING(1),
  dob DATE,
  specialty VARCHAR
);


CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  surname VARCHAR,
  given_name VARCHAR,
  gender CHARACTER VARYING(1),
  dob DATE,
  insurance VARCHAR
);

CREATE TABLE appointments(
  date DATE,
  time TIME,
  doctor_id INTEGER REFERENCES doctors(id),
  patient_id INTEGER REFERENCES patients(id)
);
