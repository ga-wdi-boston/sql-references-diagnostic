-- create doctors, patients, and appointments tables
CREATE TABLE doctors (
id SERIAL PRIMARY KEY,
surname CHARACTER VARYING,
given_name CHARACTER VARYING,
gender CHARACTER VARYING,
dob DATE,
specialty CHARACTER VARYING
);

CREATE TABLE patients (
id SERIAL PRIMARY KEY,
surname CHARACTER VARYING,
given_name CHARACTER VARYING,
gender CHARACTER VARYING,
dob DATE,
insurance CHARACTER VARYING
);

CREATE TABLE appointments (
date TEXT,
time TEXT,
comment TEXT,
doctor_id INTEGER REFERENCES doctors(id),
patient_id INTEGER REFERENCES patients(id)
);
