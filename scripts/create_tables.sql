-- create doctors, patients, and appointments tables
create table doctors(
  id serial primary key,
  surname varchar,
  given_name varchar,
  gender varchar(1),
  dob date,
  specialty varchar
  );

create table patients(
  id serial primary key,
  surname varchar,
  given_name varchar,
  gender varchar(1),
  dob date,
  insurance varchar
);

create table appointments(
  id serial primary key,
  patient_id integer references patients(id),
  doctor_id integer references doctors(id),
  date text,
  time text,
  comment text
)
;
