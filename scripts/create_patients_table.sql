-- create doctors, patients, and appointments tables
CREATE TABLE patients(id SERIAL PRIMARY KEY,
                    surname TEXT,
                    given_name TEXT,
                    gender TEXT,
                    dob INTEGER,
                    insurance TEXT);
