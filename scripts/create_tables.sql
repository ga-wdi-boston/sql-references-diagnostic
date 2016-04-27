-- create doctors, patients, and appointments tables
create table doctors (
  id serial primary key,
  surname varchar,
  given_name varchar,
  gender varchar,
  born_on date,
  specialty varchar
);

create table patients (
  id serial primary key,
  surname varchar,
  given_name varchar,
  gender varchar,
  born_on date,
  insurance varchar
);


create table appointments (
  id serial primary key,
  apt_date date,
  apt_time text,
  comment text,
  doctor_id integer references doctors,
  patient_id integer references patients
)
