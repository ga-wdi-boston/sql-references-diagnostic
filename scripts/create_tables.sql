-- create doctors, patients, and appointments tables
--doctors
CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  surname CHARACTER VARYING(128),
  given_name CHARACTER VARYING(128),
  gender CHARACTER VARYING(1),
  dob DATE,
  specialty CHARACTER VARYING(128),

  doctor_id INTEGER REFERENCES doctors(id),
  patient_id INTEGER REFERENCES patients(id)
);

--patients
CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  surname CHARACTER VARYING(128),
  given_name CHARACTER VARYING(128),
  gender CHARACTER VARYING(1),
  dob DATE,
  insurance CHARACTER VARYING(128),

  doctor_id INTEGER REFERENCES doctors(id),
  patient_id INTEGER REFERENCES patients(id)
);

-- appointments
CREATE TABLE appointments (
  id SERIAL PRIMARY KEY,
  appointment_date DATE,
  appointment_time CHARACTER VARYING(128),
  appointment_comment CHARACTER VARYING(128),


  doctor_id INTEGER REFERENCES doctors(id),
  patient_id INTEGER REFERENCES patients(id)
);
