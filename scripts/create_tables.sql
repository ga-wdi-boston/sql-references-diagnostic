-- create doctors, patients, and appointments tables

-- doctors - use the first line of data/doctors.csv for the column names
--
-- patients - use the first line of data/patients.csv for the column names
--
-- appointments - which should have date, time, and comment columns (feel free to use
-- the type TEXT for all three) as well as columns referencing both doctors and patients.


CREATE TABLE doctors(
    id SERIAL PRIMARY KEY,
    surname TEXT,
    given_name TEXT,
    gender TEXT,
    born_on TEXT,
    specialty TEXT
);

CREATE TABLE patients(
    id SERIAL PRIMARY KEY,
    surname TEXT,
    given_name TEXT,
    gender TEXT,
    born_on TEXT,
    insurance TEXT
);

CREATE TABLE appointments (
    id SERIAL PRIMARY KEY,
    dates TEXT,
    times TEXT,
    comment TEXT,
    patient_id INTEGER REFERENCES patients,
    doctor_id INTEGER REFERENCES doctors
);
