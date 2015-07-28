-- create doctors, patients, and appointments tables
CREATE TABLE appointments(id SERIAL PRIMARY KEY,
                          date TEXT,
                          time TEXT,
                          comment TEXT,
                          doctor_id INTEGER,
                          patient_id INTEGER);
