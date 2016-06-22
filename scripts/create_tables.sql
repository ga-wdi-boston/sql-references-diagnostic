-- create doctors, patients, and appointments tables

-- doctors table
CREATE TABLE doctors (
id SERIAL PRIMARY KEY,
surname varchar,
given_name varchar,
gender varchar,
born_on integer,
specialty varchar
);

-- patients table
CREATE TABLE patients (
id SERIAL PRIMARY KEY,
surname varchar,
given_name varchar,
gender varchar,
born_on integer,
insurance varchar
);

-- appointments table
CREATE TABLE appointments (
id SERIAL PRIMARY KEY,
date TEXT,
time TEXT,
comment TEXT,
doctor_id integer REFERENCES doctors,
patient_id integer REFERENCES patients
);
