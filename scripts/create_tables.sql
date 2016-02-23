-- create doctors, patients, and appointments tables
  CREATE TABLE doctors (
    id SERIAL PRIMARY KEY,
    surname VARCHAR,
    given_name VARCHAR,
    gender VARCHAR,
    born_on DATE,
    specialty VARCHAR
  );

  CREATE TABLE patients (
    id SERIAL PRIMARY KEY,
    surname VARCHAR,
    given_name VARCHAR,
    gender VARCHAR,
    born_on DATE,
    insurance VARCHAR
  );

  CREATE TABLE appointments (
    id SERIAL PRIMARY KEY,
    app_date DATE,
    app_time TEXT,
    comments TEXT,
    doctor_surname INTEGER REFERENCES doctors,
    patient_surname INTEGER REFERENCES patients\
  );
