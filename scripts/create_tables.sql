-- create doctors, patients, and appointments tables
Create Table doctors (
  id serial primary key,
  surname text,
  given_name text,
  gender text,
  born_on date,
  specialty text
);

create Table patients (
  id serial primary key,
  surname text,
  given_name text,
  gender text,
  born_on date,
  insurance text
);

create table appointments (
  id serial primary key,
  date date,
  time TEXT,
  comment text,
  patient_id INTEGER REFERENCES patients,
  doctors_id INTEGER REFERENCES doctors
);
