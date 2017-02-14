-- create doctors, patients, and appointments tables
create table doctors(
  id serial primary key
  family_name text,
   given_name text,
    gender text,
     born_on date,
      specialty text
    );

create table patients (
  id serial primary key
    family_name text,
     given_name text,
      gender text,
       born_on date,
        insurance text
);

create table appointments(
  id serial primary key,
    date date,
    time time,
    comment  text,
    doctor.id integer references doctors(id)
    patient.id integer references patients(id)
);
