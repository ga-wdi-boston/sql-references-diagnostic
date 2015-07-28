-- create doctors, patients, and appointments tables
CREATE TABLE doctors(id SERIAL PRIMARY KEY,
                    surname TEXT,
                    given_name TEXT,
                    gender TEXT,
                    dob INTEGER,
                    specialty TEXT);
