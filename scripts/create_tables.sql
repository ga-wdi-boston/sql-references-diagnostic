-- create doctors, patients, and appointments tables

create table doctors (
  id serial primary key,
  surname character varying,
  given_name character varying,
  gender character varying,
  born_on date,
  specialty character varying
);


create table patients (
  id serial primary key,
  surname character varying,
  given_name character varying,
  gender character varying,
  born_on date,
  insurance character varying
);

create table appointments (
  id serial primary key,
  day text,
  time_of_day text,
  comment text,
  doctor_id integer references doctors,
  patient_id integer references patients
);
