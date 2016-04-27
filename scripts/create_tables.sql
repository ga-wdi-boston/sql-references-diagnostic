-- create doctors, patients, and appointments tables
CREATE TABLE doctors(
  id SERIAL PRIMARY KEY,
  surname VARCHAR,
  given_name VARCHAR,
  gender CHARACTER VARYING(1),
  born_on DATE,
  specialty VARCHAR, -- CHARACTER VARYING
);

CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  surname VARCHAR,
  given_name VARCHAR,
  gender CHARACTER VARYING(1),
  born_on DATE,
  insurance VARCHAR -- CHARACTER VARYING
);

CREATE TABLE appointments(
  id SERIAL PRIMARY KEY,
  app_date TEXT,
  app_time TEXT,
  comment TEXT,
  doctor_id INTEGER REFERENCES doctors -- defaults to (id)
  patient_id INTEGER REFERENCES patients
);
