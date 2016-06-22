-- create doctors, patients, and appointments tables

create table doctors (
  id SERIAL PRIMARY KEY,
  surname varchar,
  given_name varchar,
  gender varchar,
  born_on date,
  specialty varchar
);

create table patients (
  id SERIAL PRIMARY KEY,
  surname varchar,
  given_name varchar,
  gender varchar,
  born_on date,
  insurance varchar
);

create table appointments (
  id SERIAL PRIMARY KEY,
  appointment_date text,
  apointment_time text,
  comments text,
  doctor integer references doctors,
  patient integer references patients
)
