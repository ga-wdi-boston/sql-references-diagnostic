-- create doctors, patients, and appointments tables
CREATE TABLE patients (
id SERIAL PRIMARY KEY,
surname TEXT,
given_name TEXT,
gender TEXT,
born_on DATE,
insurance TEXT,
);

CREATE TABLE doctors (
id SERIAL PRIMARY KEY,
surname TEXT,
given_name TEXT,
gender TEXT,
born_on DATE,
specialty TEXT,
);

CREATE TABLE appointments (
id SERIAL PRIMARY KEY,
appointment_date DATE,
appointment_time TEXT,   --should this be string of time or should it be using TIME
comment TEXT,
patient TEXT
doctor TEXT
);
