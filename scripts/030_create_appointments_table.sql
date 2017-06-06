-- create appointments TABLE
CREATE TABLE appointments (
  id SERIAL PRIMARY KEY,
  on_date DATE,
  start_time TIME,
  comments TEXT,
  doctor_id INTEGER REFERENCES doctors(id),
  patient_id INTEGER REFERENCES patients(id)
);
