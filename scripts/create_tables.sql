-- create doctors, patients, and appointments tables
CREATE TABLE patients(
id SERIAL PRIMARY KEY,
surname TEXT,
given_name TEXT,
gender TEXT,
born_on TEXT,
insurance TEXT,
);

CREATE TABLE doctors(
id SERIAL PRIMARY KEY,
surname TEXT,
given_name TEXT,
gender TEXT,
born_on TEXT,
specialty TEXT,
);

CREATE TABLE appointments(
id SERIAL PRIMARY KEY,
date TEXT,
time TEXT,
comment TEXT,
doctor_id
patient_id
);
