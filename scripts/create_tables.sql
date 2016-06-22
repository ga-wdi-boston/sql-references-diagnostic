-- create doctors, patients, and appointments tables

CREATE TABLE doctors (
  id serial primary key
  surname varchar,
  given_name varchar,
  gender varchar,
  born_on date,
  specialty varchar
);

CREATE TABLE patients (
  id serial primary key
  surname varchar,
  given_name varchar,
  gender varchar,
  born_on date,
  insurance varchar
);

CREATE TABLE appointments (
  id serial primary key
  doctor_id integer,
  patient_id integer,
  appointment_date text,
  appointment_time text,
  comment text
);
