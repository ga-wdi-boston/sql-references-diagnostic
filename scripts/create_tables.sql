-- create doctors, patients, and appointments tables
CREATE TABLE doctors(surname,given_name,gender,born_on,specialty)
  id SERIAL PRIMARY KEY,
  surname TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE
  specialty TEXT,
);

CREATE TABLE patients(surname,given_name,gender,born_on,insurance)
  id SERIAL PRIMARY KEY,
  surname TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE
  insurance TEXT,
);

CREATE TABLE appointments(date, time, comment)
id SERIAL PRIMARY KEY,
date DATE,
time TEXT,
comment TEXT,
