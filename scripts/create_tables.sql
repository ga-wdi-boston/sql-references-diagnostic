-- create doctors, patients, and appointments tables
create table doctors (
  id serial primary key,
  surname varchar,
  given_name varchar,
  gender varchar,
  dob date,
  specialty varchar
);

create table patients (
  id serial primary key,
  surname varchar,
  given_name varchar,
  gender varchar,
  dob date,
  insurance varchar
);


create table appointments (
  id serial primary key,
  appt_date date,
  appt_time text, --timestamp normally
  comment text,
  doctor_id integer references doctors(id),
  patient_id integer references patients(id)
);


-- doctors - use the first line of data/doctors.csv for the column names
-- patients - use the first line of data/patients.csv for the column names
-- appointments - which should have date, time, and comment columns (feel free to use the type TEXT for all three) as well as columns referencing both doctors and patients.
