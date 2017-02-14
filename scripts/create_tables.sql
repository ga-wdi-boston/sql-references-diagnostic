-- create doctors, patients, and appointments tables
CREATE TABLE doctors (
 id SERIAL PRIMARY KEY,
 family_name TEXT,
 given_name TEXT,
 gender TEXT,
 born_on DATE,
 specialty TEXT
);

CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE,
  insurance TEXT
);

CREATE TABLE appointments (
  id SERIAL PRIMARY KEY,
   patient TEXT,
   doctor TEXT,
   appointment_day DATE,
   hour TIME,
   comment TEXT,
);
