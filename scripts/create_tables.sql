-- create doctors, patients, and appointments tables
CREATE TABLE doctors(
id SERIAL PRIMARY KEY,
surname VARCHAR,
given_name VARCHAR,
gender VARCHAR,
dob DATE,
specialty VARCHAR
);

CREATE TABLE patients(
id SERIAL PRIMARY KEY,
surname VARCHAR,
given_name VARCHAR,
gender VARCHAR,
dob DATE,
insurance VARCHAR
);

CREATE TABLE appointments(
id SERIAL PRIMARY KEY,
date text,
time text,
comment text,
doctor_id INTEGER REFERENCES doctors(id),
patient_id INTEGER REFERENCES patients(id)
);
