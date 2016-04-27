-- create doctors, patients, and appointments tables
CREATE TABLE doctors(
    id SERIAL PRIMARY KEY,
    surname VARCHAR,
    given_name VARCHAR,
    gender VARCHAR(1),
    born_on DATE,
    specialty VARCHAR
)
CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  surname VARCHAR,
  given_name VARCHAR,
  gender VARCHAR(1),
  born_on DATE,
  insurance VARCHAR
)
CREATE TABLE appointments(
  id SERIAL PRIMARY KEY,
  appt_date DATE,
  appt_time TIME,
  comment VARCHAR,
  doctor_id INTEGER REFERENCES doctors(id),
  patient_id INTEGER REFERENCES patients(id)
);
