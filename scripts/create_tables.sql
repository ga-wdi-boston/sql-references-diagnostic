-- create doctors, patients, and appointments tables
CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  surname varchar,
  given_name varchar,
  gender varchar,
  born_on date,
  specialty varchar
);

CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  surname varchar,
  given_name varchar,
  gender varchar,
  born_on date,
  insurance varchar
);

CREATE TABLE appointments (
  id SERIAL PRIMARY KEY,
  day_on text,
  time_at text,
  comment text,
  doctor_id integer REFERENCES doctors,
  patient_id integer REFERENCES patients
);
