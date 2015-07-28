-- create doctors, patients, and appointments tables
CREATE TABLE doctors(id SERIAL PRIMARY KEY,
                        surname TEXT,
                        given_name TEXT,
                        gender TEXT,
                        dob TEXT,
                        specialty TEXT);

CREATE TABLE patients(id SERIAL PRIMARY KEY,
                        surname TEXT,
                        given_name TEXT,
                        gender TEXT,
                        dob TEXT,
                        insurance TEXT);

CREATE TABLE appointments(id SERIAL PRIMARY KEY,
                        date TEXT,
                        time TEXT,
                        comments TEXT);
