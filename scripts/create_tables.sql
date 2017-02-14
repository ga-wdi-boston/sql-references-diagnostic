-- create doctors, patients, and appointments tables
create table doctors (
id SERIAL PRIMARY KEY,
family_name text,
given_name text,
gender text,
born_on date,
specialty text,
);

create table patients (
  id SERIAL PRIMARY KEY,
  family_name text,
  given_name text,
  gender text,
  born_on date,
  insurance text,
);

create table appointments (
  id SERIAL PRIMARY KEY,
  date_of date,
  time_of time,
  comment text,
);
