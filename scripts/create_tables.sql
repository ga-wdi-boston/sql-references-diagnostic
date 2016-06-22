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
  appt_date date,
  appt_time time,
  comment text,
  doctor_id integer REFERENCES doctors (id),
  patient_id integer REFERENCES patients (id)
);
