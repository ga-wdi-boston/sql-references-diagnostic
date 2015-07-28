-- create doctors, patients, and appointments tables
-- `doctors` - surname,given_name,gender,dob,specialty
-- `patients` - surname,given_name,gender,dob,insurance
-- `appointments` - date, time, and comment columns (feel free to use the type `TEXT` for all three) as well as columns referencing both doctors and patients.
-- CREATE TABLE doctors(id SERIAL PRIMARY KEY,
--                     surname TEXT,
--                     given_name TEXT,
--                     gender TEXT,
--                     dob TEXT,
--                     specialty TEXT
--                     );

-- CREATE TABLE patients(id SERIAL PRIMARY KEY,
--                     surname TEXT,
--                     given_name TEXT,
--                     gender TEXT,
--                     dob TEXT,
--                     insurance TEXT
--                     );

CREATE TABLE appointments(id SERIAL PRIMARY KEY,
                    date TEXT,
                    time TEXT,
                    comment TEXT,
                    doctor_id INTEGER REFERENCES doctors(id),
                    patient_id INTEGER REFERENCES patients(id)
                    );
