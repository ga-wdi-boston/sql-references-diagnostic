-- create doctors, patients, and appointments tables
CREATE TABLE doctors(
  id INTEGER PRIMARY KEY,
  surname VARCHAR,
  given_name VARCHAR,
  gender VARCHAR,
  born_on DATE,
  specialty VARCHAR
);

CREATE TABLE patients(
  id INTEGER PRIMARY KEY,
  surname VARCHAR,
  given_name VARCHAR,
  gender VARCHAR,
  born_on DATE,
  insurance VARCHAR
);


CREATE TABLE appointments(
  id INTEGER PRIMARY KEY,
  appt_date TEXT,
  appt_time TEXT,
  comment TEXT,
  doctors_id INTEGER REFERENCES doctors,
  patients_id INTEGER REFERENCES patients
);
