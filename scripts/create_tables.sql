-- create doctors, patients, and appointments tables
CREATE TABLE doctors(
  id SERIAL PRIMARY KEY,
  surname varchar,
  given_name varchar,
  gender varchar,
  born_on integer,
  specialty varchar
);

CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  surname varchar,
  given_name varchar,
  gender varchar,
  born_on integer,
  insurance varchar
);

CREATE TABLE appointments(
  id SERIAL PRIMARY KEY,
  date varchar,
  time varchar,
  comment varchar,
  doctor_id INTEGER REFERENCES doctors,
  patient_id INTEGER REFERENCES patients
);
