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
date_of DATE,
time_of TIME,
comments TEXT,
doctor_id INTEGER REFERENCES doctors(id),
patient_id INTEGER REFERENCES patients(id)
);
