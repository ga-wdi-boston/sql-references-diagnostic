-- create doctors, patients, and appointments tables

-- create a table to store information about doctors
CREATE TABLE doctors(
  id SERIAL PRIMARY KEY,
  surname TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE,
  specialty TEXT
);

-- create a table to store information about patients
CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  surname TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE,
  insurance TEXT
);

-- create a table to store information about appointments
CREATE TABLE appointments(
  id SERIAL PRIMARY KEY,
  appt_date TEXT,
  appt_time TEXT,
  comment TEXT,
  patient_id INTEGER REFERENCES patients(id),
  doctor_id INTEGER REFERENCES doctors(id)
);
