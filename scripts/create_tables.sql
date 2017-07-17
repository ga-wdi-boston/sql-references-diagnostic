-- create doctors, patients, and appointments tables
CREATE TABLE doctors(
  id SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE,
  specialty TEXT
);

CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE,
  insurance TEXT
);


CREATE TABLE appointments(
  id SERIAL PRIMARY KEY,
  appt_date DATE,
  appt_time TIME,
  comment TEXT,
  doctor_id INTEGER REFERENCES doctors(id),
  patient_id INTEGER REFERENCES patients(id),
);

-- CREATE INDEX patient_doctor_id_index ON patients(doctor_id);
-- CREATE INDEX patient_doctor_id_index ON patients(doctor_id);
