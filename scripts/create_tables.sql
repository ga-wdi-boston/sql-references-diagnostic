-- create doctors, patients, and appointments tables
CREATE TABLE doctors(
  id SERIAL PRIMARY KEY,
  surname CHARACTER VARYING,
  given_name CHARACTER VARYING,
  gender CHARACTER VARYING,
  born_on TEXT,
  specialty CHARACTER VARYING
);

CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  surname CHARACTER VARYING,
  given_name CHARACTER VARYING,
  gender CHARACTER VARYING,
  born_on TEXT,
  insurance CHARACTER VARYING
);

CREATE TABLE appointments(
  id SERIAL PRIMARY KEY,
  date_of TEXT,
  time_of TEXT,
  comment CHARACTER VARYING,
  patients_id INTEGER REFERENCES patients,
  doctors_id INTEGER REFERENCES doctors,
);
