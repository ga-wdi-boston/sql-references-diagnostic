-- create endorsements connecting developers and skills
CREATE TABLE appointments(id SERIAL PRIMARY KEY, date TEXT, time TEXT, comment_column TEXT, doctor_id INTEGER REFERENCES doctors(ID), patient_id INTEGER REFERENCES patients(id))

;
