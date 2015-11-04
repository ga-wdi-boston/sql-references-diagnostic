-- create doctors, patients, and appointments tables
CREATE TABLE doctors(
id SERIAL PRIMARY KEY,
surname CHARACTER VARYING,
given_name CHARACTER VARYING,
gender CHARACTER VARYYING(1),
dob DATE,
specialty CHARACTER VARYING
);

CREATE TABLE patients(
id SERIAL PRIMARY KEY,
surname CHARACTER VARYING,
given_name CHARACTER VARYING,
gender CHARACTER VARYING(1),
dob DATE,
insurance CHARACTER VARYING
);

CREATE TABLE appointments
id SERIAL PRIMARY KEY,
date DATE,
time INTEGER,
comment CHARACTER VARYING
);

