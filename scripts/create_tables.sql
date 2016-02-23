-- create doctors, patients, and appointments tables
CREATE TABLE doctors (
  surname VARCHAR,
  given_name VARCHAR,
  gender VARCHAR,
  born_on TEXT,
  specialty VARCHAR
);

CREATE TABLE patients (
  surname VARCHAR,
  given_name VARCHAR,
  gender VARCHAR,
  born_on TEXT,
  insurance VARCHAR
);

CREATE TABLE appointments (
  date_of TEXT,
  time_of TEXT,
  comment TEXT
);
