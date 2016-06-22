-- create doctors, patients, and appointments tables
CREATE TABLE doctors(
  id serial PRIMARY KEY,
  surname varchar,
  given_name varchar,
  gender varchar,
  born_on date,
  specialty varchar
);

CREATE TABLE patients(
  id serial PRIMARY KEY,
  surname varchar,
  given_name varchar,
  gender varchar,
  born_on date,
  insurance varchar
);

CREATE TABLE appointments(
  doctor_id integer REFERENCES doctors(id) not null,
  patient_id integer REFERENCES patients(id) not null,
  appt_date date,
  appt_time time,
  comments varchar
);
